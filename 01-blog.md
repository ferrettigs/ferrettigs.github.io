---
layout: default
title: News
---

<h1 class="page-heading">News</h1>

<ul class="post-list" style="list-style: none; padding: 0;">
  {% for post in site.posts %}
    <li style="display: flex; gap: 20px; align-items: center; margin-bottom: 30px;">

      {% if post.image %}
      <a href="{{ post.url | relative_url }}" style="flex: 0 0 200px;">
        <img
          src="{{ post.image | relative_url }}"
          alt="{{ post.title | escape }}"
          style="width: 200px; height: 120px; object-fit: cover; border-radius: 6px;"
        >
      </a>
      {% endif %}

      <div>
        <span class="post-meta">
          {{ post.date | date: "%b %-d, %Y" }}
        </span>

        <h2 style="margin: 5px 0;">
          <a class="post-link" href="{{ post.url | relative_url }}">
            {{ post.title }}
          </a>
        </h2>
      </div>

    </li>
  {% endfor %}
</ul>
