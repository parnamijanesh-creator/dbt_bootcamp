{% macro select_positive_values(model_name, column_name)%}
    select *
    from {{ model_name }}
    where {{ column_name }} > 0
{% endmacro%}