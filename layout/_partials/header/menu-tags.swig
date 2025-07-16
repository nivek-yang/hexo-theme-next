<ul class="sub-menu">
  {% for tag in site.tags.sort('name') %}
    <li class="menu-item-child">
      <a href="{{ url_for(tag.path) }}">
        {{ tag.name }}
        <span class="post-count">{{ tag.posts.length }}</span>
      </a>
    </li>
  {% endfor %}
</ul>