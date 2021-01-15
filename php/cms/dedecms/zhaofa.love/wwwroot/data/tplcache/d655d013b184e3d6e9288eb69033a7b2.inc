<li class="navitem"><a {dede:field name='currentstyle'/} href="{dede:field name='typeurl'/}" >{dede:field
    name='typename'/}</a>
    <ul class="subnav">
        {dede:channel type='son' noself='yes'}
        <li><a href="[field:typelink/]">[field:typename/]</a></li>
        {/dede:channel}
    </ul>
</li>