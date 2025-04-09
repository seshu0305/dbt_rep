{% macro get_date_parts(date_column) %}
  OBJECT_CONSTRUCT(
    'original_date', {{ date_column }},
    'year', YEAR(CAST({{ date_column }} AS DATE)),
    'month', MONTH(CAST({{ date_column }} AS DATE)),
    'day', DAY(CAST({{ date_column }} AS DATE)),
    'day_of_week', DAYOFWEEK(CAST({{ date_column }} AS DATE)),
    'day_of_year', DAYOFYEAR(CAST({{ date_column }} AS DATE)),
    'week', WEEK(CAST({{ date_column }} AS DATE)),
    'quarter', QUARTER(CAST({{ date_column }} AS DATE))
  )
{% endmacro %}