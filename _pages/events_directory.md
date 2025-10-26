---
layout: page
title: tags
permalink: /events_directory/
---

<div class="row g5">
    <div class="col-md-8">
        <h3 class="py-2 my-2 border-bottom">Events Directory</h3>
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 mt-3">
            {% for event in site.data.events %}
                <article class="col">
                    <div class="entry bg-body-tertiary rounded p-3">
                        <span class="text-dark-emphasis fs-6">{{ event.date }}</span>
                        <h6 class="mt-1">{{ event.title }}</h6>
                        <span><i class="bi bi-geo"></i>
                        {% if event.online == "true" %}
                            Online
                        {% else %}
                            {{event.city}}, {{event.country}}
                        {% endif %}
                        </span>
                    </div>
                </article>
            {% endfor %}
        </div>
    </div>
    <div class="col-md-4">
        <div class="p-4 mb-3 bg-body-tertiary rounded">
            dds
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
