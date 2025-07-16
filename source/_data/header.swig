{% if theme.menu.tags %}
  <li class="menu-item menu-item-tags">
    <a href="#" class="menu-item-link">
      <i class="menu-item-icon {{ theme.menu.tags.split('||')[1].trim() }}"></i>
      <span>{{ __('menu.tags') }}</span>
    </a>
    <ul class="sub-menu">
      {% for tag in site.tags.toArray() %}
        <li class="menu-item">
          <a href="{{ url_for(tag.path) }}" class="menu-item-link">
            <span>{{ tag.name }}</span>
            <span class="menu-item-count">({{ tag.posts.length }})</span>
          </a>
        </li>
      {% endfor %}
    </ul>
  </li>
{% endif %} 