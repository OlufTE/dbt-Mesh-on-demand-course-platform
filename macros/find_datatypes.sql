{% macro find_datatypes(model) %}
    {% set cols=adapter.get_columns_in_relation(model) %}
    {% set columns_string = [] %}
    {%- for col in cols %}
        {% do columns_string.append("- name: " + col.name) %}
        {% do columns_string.append("data_type: " + col.data_type)%}
    {%- endfor %}
    {{ return(columns_string) }}
{% endmacro %}