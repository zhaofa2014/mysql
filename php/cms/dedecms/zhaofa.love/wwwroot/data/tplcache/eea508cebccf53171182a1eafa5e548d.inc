<div class="newstitem plr10 wow fadeIn" data-wow-delay="0.2s"><a class="newsinfo" href="view.php?aid=[field:id/]">
        <div class="newsdate">
            <p class="md">[field:pubdate function='strftime("%m-%d",@me)'/]</p>
            <p class="year">[field:pubdate function='strftime("%Y",@me)'/]</p>
        </div>
        <div class="newsbody">
            <p class="title ellipsis">[field:title/]</p>
            <p class="description">[field:description function='cn_substr(@me,50)'/]...</p>
        </div>
    </a></div>