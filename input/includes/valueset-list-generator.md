{% comment %}
  ValueSet List Generator
  Iterates over site.data.resources or site.data.artifacts to generate a list of ValueSets
  defined in this IG.
{% endcomment %}

{% assign valuesets = "" %}
{%- for r_hash in site.data.resources -%}
  {% assign r_type = r_hash[0] | split: '/' | first %}
  {%- assign r = r_hash[1] -%}
  {%- if r_type == "ValueSet" %}
    {% assign valuesets = valuesets | append: "," | append: r.name %}
  {%- endif -%}
{%- endfor -%}

{% assign my_array = valuesets | split: "," %}
{% assign my_array = my_array | sort | uniq %}

<ul class="valueset-list">
{% for i in my_array offset:1 %}
  {%- for r_hash in site.data.resources -%}
    {% assign r_type = r_hash[0] | split: '/' | first %}
    {%- assign r = r_hash[1] -%}
    {%- if r.name == i and r_type == "ValueSet" %}
      <li><a href="{{r.path}}">{{r.title | default: r.name}}</a></li>
    {%- endif -%}
  {%- endfor -%}
{% endfor %}
</ul>

{% if my_array.size == 1 %}
  <p><em>No ValueSets defined in this guide.</em></p>
{% endif %}
