from scrapy.spiders import Spider
from scrapyspider.items import DoubanMovieItem


class DoubanMovieTop250Spider(Spider):
    name = 'douban_movie_top250'
    start_urls = ['https://movie.douban.com/top250']

    def parse(self, response):
        item = DoubanMovieItem()
