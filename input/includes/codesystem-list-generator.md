{% comment %}
  CodeSystem List Generator
  Iterates over site.data.resources to generate a list of CodeSystems
  defined in this IG.
{% endcomment %}

{% assign codesystems = "" %}
{%- for r_hash in site.data.resources -%}
  {% assign r_type = r_hash[0] | split: '/' | first %}
  {%- assign r = r_hash[1] -%}
  {%- if r_type == "CodeSystem" %}
    {% assign codesystems = codesystems | append: "," | append: r.name %}
  {%- endif -%}
{%- endfor -%}

{% assign my_array = codesystems | split: "," %}
{% assign my_array = my_array | sort | uniq %}

<ul class="codesystem-list">
{% for i in my_array offset:1 %}
  {%- for r_hash in site.data.resources -%}
    {% assign r_type = r_hash[0] | split: '/' | first %}
    {%- assign r = r_hash[1] -%}
    {%- if r.name == i and r_type == "CodeSystem" %}
      <li><a href="{{r.path}}">{{r.title | default: r.name}}</a></li>
    {%- endif -%}
  {%- endfor -%}
{% endfor %}
</ul>

{% if my_array.size == 1 %}
  <p><em>No CodeSystems defined in this guide.</em></p>
{% endif %}
