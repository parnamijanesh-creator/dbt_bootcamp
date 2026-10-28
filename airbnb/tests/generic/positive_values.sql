-- Note: It is called in the schema.yml file.
-- Since it is defined under the models/columns section, it takes the model and column name as arguments.
-- It checks if the column value is positive.
-- If the value is less than or equal to 0, it will fail the test.
{% test positive_values(model, column_name) %}
SELECT * FROM {{ model }} WHERE {{ column_name }} <= 0
{% endtest %}