# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import os
import requests

base_path = '/home/cloud/workspace/project/scrapy/image/'

class QxPipeline:
    def process_item(self, item, spider):
        #print(item['name'][0].strip())
        path = base_path + item['name'][0].strip()
        isExists=os.path.exists(path)
        if not isExists:
            os.makedirs(path)

        img_urls = item['img']
        for i,img_url in enumerate(img_urls):
            img_resp = requests.get(img_url)
            img = img_resp.content
            with open(path+'/'+str(i)+'_img.jpg','wb') as f:
                f.write(img)
        
        ad_img_urls = item['ad_img']
        for i,ad_img_url in enumerate(ad_img_urls):
            ad_img_resp = requests.get(ad_img_url)
            ad_img = ad_img_resp.content
            with open(path+'/ad_'+str(i)+'.jpg', 'wb') as f:
                f.write(ad_img)

        #return item


