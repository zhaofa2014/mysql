# -*- coding: utf-8 -*-
import scrapy
import re
from  scrapy.http import Request
from qx.items import QxItem
from bs4 import BeautifulSoup

class QxsSpider(scrapy.Spider):
    name = 'qxs'
    allowed_domains = ['b2b.comix.com.cn']
    start_urls = ['http://b2b.comix.com.cn/']

    def parse(self, response):
        links = []
        # links = response.xpath('//*[@id="catemenu"]/div/span/h3/a[2]/@href').extract()

        links = response.xpath('//*[@id="catemenu"]/div/span/h3/a[2]/@href').extract()

        for link in links:
            yield Request('https://b2b.comix.com.cn' + link, self.parse1)

    def parse1(self, response):
        #item = QxItem()
        #item['name'] = response.xpath('/html/body/div[5]/div[1]/div[3]/ul/li/div/div[2]/a/text()').extract()
        #print("".join((re.sub("\n", " ", item['name'][0])).split(" ")))
        links = []
        links = response.xpath('/html/body/div[5]/div[1]/div[3]/ul/li/a/@href').extract()
        for link in links:
            yield Request('https://b2b.comix.com.cn' + link, self.parse2)

        html = response.xpath('//*[@class="nmListPage"]').extract()
        for h in html:
            bs = BeautifulSoup(h, 'lxml')
            pattern = re.compile("下一页")
            element = bs.find('a', text=pattern)
            if element is not None:
                yield Request('https://b2b.comix.com.cn' + element['href'], self.parse1)

    def parse2(self, response):
        item = QxItem()
        item['img'] = response.xpath('//*[@class="procSmall"]/img/@max').extract()
        #print(item['img'])
        item['name'] = response.xpath('/html/body/div[5]/div[2]/div/div[2]/h1/text()').extract()
        item['ad_img'] = response.xpath('/html/body/div[5]/div[3]/div[2]/div[1]/div[2]/div[2]/p/img/@src').extract()
        yield item



# yum install python3
# pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple scrapy
# pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple requests
# pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple beautifulsoup4
# python3 -m scrapy crawl qxs
#


