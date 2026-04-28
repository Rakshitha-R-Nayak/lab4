{% macro clean_text(column) %}
    ltrim(rtrim({{ column }}))
{% endmacro %}