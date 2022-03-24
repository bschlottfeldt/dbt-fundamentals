{% macro limit_data(column_name, days_limit=3 ) %}
{% if target.name== 'default' %}
where {{column_name}} >= dateadd('day', -{{days_limit}}, current_timestamp)
{% endif %}
{% endmacro %}