{% comment %}
  ConceptMap List Generator
  Iterates over site.data.resources to generate a list of ConceptMaps
  defined in this IG.
{% endcomment %}

{% assign conceptmaps = "" %}
{%- for r_hash in site.data.resources -%}
  {% assign r_type = r_hash[0] | split: '/' | first %}
  {%- assign r = r_hash[1] -%}
  {%- if r_type == "ConceptMap" %}
    {% assign conceptmaps = conceptmaps | append: "," | append: r.name %}
  {%- endif -%}
{%- endfor -%}

{% assign my_array = conceptmaps | split: "," %}
{% assign my_array = my_array | sort | uniq %}

<ul class="conceptmap-list">
{% for i in my_array offset:1 %}
  {%- for r_hash in site.data.resources -%}
    {% assign r_type = r_hash[0] | split: '/' | first %}
    {%- assign r = r_hash[1] -%}
    {%- if r.name == i and r_type == "ConceptMap" %}
      <li><a href="{{r.path}}">{{r.title | default: r.name}}</a></li>
    {%- endif -%}
  {%- endfor -%}
{% endfor %}
</ul>

{% if my_array.size == 1 %}
  <p><em>No ConceptMaps defined in this guide.</em></p>
{% endif %}
