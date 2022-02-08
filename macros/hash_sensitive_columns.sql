{% macro hash_sensitive_columns(source_table, project='jaffle_shop') %}

    {% set pii_columns = get_meta_columns(source_table, "sensitive", project=project) %}

    {%- for column in pii_columns %}
        {{ hash_of_column(column) }}
    {% endfor %}

    {{ dbt_utils.star(from=ref(source_table), except=pii_columns) }}

{% endmacro %}
