---
title: News
layout: default
eleventyNavigation:
  key: News
  order: 8
---

{% assign newsItems = collections.news %}
{%- if newsItems.length > 0 %}
  <ul class="alt">
    {%- for news in newsItems %}
    <li>
      <h4><a style="cursor: pointer" href="{{news.url}}">{{ news.data.title }}</a></h4>
      <strong>Date: </strong>{{ news.date | readableDate }}
      {%- if news.data.description %}
        <p>{{ news.data.description }}</p>
      {%- endif %}
    </li>
    {%- endfor %}
  </ul>
{%- else %}
  <p>No News Items found, please try again later.</p>
{%- endif %}