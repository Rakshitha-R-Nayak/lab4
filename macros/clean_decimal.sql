{% macro clean_decimal(column) %}
    cast({{ column }} as float)
{% endmacro %}