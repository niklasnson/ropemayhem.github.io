---
layout: page
title: Shops Directory
permalink: /shops_directory/
---

<div class="row g5">
    <div class="col-md-8">
        <h3 class="py-2 my-2 border-bottom">Shops Directory</h3>
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 mt-3">
            {% for store in site.data.stores %}
                <article class="col">
                    <div class="entry bg-body-tertiary rounded p-3">
                        <a href="/shops/{{ store.title | downcase | replace: " ", "_"  }}" class="mt-1 fs-6 d-block">{{ store.title }}</a>
                        <span class="d-block">{{ store.city }}, {{ store.country }}</span>
                        <ul class="d-block">
                            {% for category in store.categories %}
                                <li>{{ category.title }}</li>
                            {% endfor %}
                        </ul>
                    </div>
                </article>
            {% endfor %}
        </div>
    </div>
    <div class="col-md-4">
        <div class="p-4 mb-3 bg-body-tertiary rounded">
            <strong>Please note</strong> that we don´t endorse or support shops in the directory. Please investigate and make up your own mind before ordering items.
        </div>

        <!-- Filter dirrecotry -->
         <div class="p-4 mb-3 bg-body-tertiary rounded">
            Filter form
        </div>

        <!-- Populair events -->
         <div class="p-4 mb-3 bg-body-tertiary rounded">
            Populair events
        </div>

        <!-- Shops on locations -->
         <div class="p-4 mb-3 bg-body-tertiary rounded">
            Locations
        </div>

    </div>
</div>
