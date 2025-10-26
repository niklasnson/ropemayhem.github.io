---
layout: page
title: {{ page_title }}
permalink: {{ page_url }}
---

<div class="row g5">
    <div class="col-12">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb py-2 my-2">
            <li class="breadcrumb-item"><a href="/shops_directory/">Directory</a></li>
            <li class="breadcrumb-item active" aria-current="page">{{ page_title }}</li>
          </ol>
        </nav>

        <h3 class="py-2 my-2">{{ title }}</h3>
        <span class="d-block">
            <i class="bi bi-house-door"></i> {{ address }}
        </span>
        <span class="d-block py-4 my-4 border-top border-bottom">
            <i class="bi bi-envelope"></i> {{ email }}
        </span>
        <span class="d-block">
            <i class="bi bi-globe"></i> <a href="{{ url }}" target="_new">Website</a>
        </span>

        <ul class="nav nav-tabs mt-4 pt-4" id="myTab" role="tablist">
          <li class="nav-item" role="presentation">
            <button class="nav-link active" id="overview-tab" data-bs-toggle="tab" data-bs-target="#overview-tab-pane" type="button" role="tab" aria-controls="overview-tab-pane" aria-selected="true">Overview</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="detail-tab" data-bs-toggle="tab" data-bs-target="#detail-tab-pane" type="button" role="tab" aria-controls="detail-tab-pane" aria-selected="false">Details</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">Contact</button>
          </li>
        </ul>
        <div class="tab-content py-3 my-3" id="myTabContent">
          <div class="tab-pane fade show active" id="overview-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
            {{ overview }}
          </div>
          <div class="tab-pane fade" id="detail-tab-pane" role="tabpanel" aria-labelledby="detail-tab" tabindex="0">
            {{ details }}
          </div>
          <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">...</div>
          <div class="tab-pane fade" id="disabled-tab-pane" role="tabpanel" aria-labelledby="disabled-tab" tabindex="0">...</div>
        </div>

    </div>
</div>
