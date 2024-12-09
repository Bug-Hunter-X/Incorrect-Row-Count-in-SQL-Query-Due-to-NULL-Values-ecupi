The solution modifies the SQL query to use `COUNT(column1), COUNT(column2), ...` instead of `COUNT(*)`.  This ensures that only rows with non-NULL values in the specified columns are counted.  For the SUM function, use COALESCE or ISNULL to handle NULL values appropriately. For example, `SUM(COALESCE(column, 0))` will replace NULL values with 0 before summing.  This ensures the aggregation is accurate.  The example provided below fixes the bug and correctly counts rows based on the specified column values.