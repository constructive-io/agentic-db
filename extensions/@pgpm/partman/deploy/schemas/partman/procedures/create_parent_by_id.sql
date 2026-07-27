-- Deploy schemas/partman/procedures/create_parent_by_id to pg

-- requires: extensions/pg_partman
-- requires: schemas/partman/procedures/create_parent_with_retention

BEGIN;

CREATE FUNCTION partman.create_parent_by_id(
  v_table_id uuid,
  v_control text,
  v_type text DEFAULT 'range',
  partition_interval text DEFAULT '1 day',
  v_premake int DEFAULT 2,
  v_retention text DEFAULT NULL,
  v_retention_keep_table boolean DEFAULT true
) RETURNS void AS $$
DECLARE
  v_parent_table text;
BEGIN
  SELECT s.schema_name || '.' || t.name INTO v_parent_table
    FROM metaschema_public.table t
    JOIN metaschema_public.schema s
      ON (s.id = t.schema_id AND s.database_id = t.database_id)
    WHERE t.id = v_table_id;

  IF v_parent_table IS NULL THEN
    RAISE EXCEPTION 'partman.create_parent_by_id: table_id % not found', v_table_id;
  END IF;

  PERFORM partman.create_parent_with_retention(
    v_parent_table := v_parent_table,
    v_control := v_control,
    v_type := v_type,
    partition_interval := partition_interval,
    v_premake := v_premake,
    v_retention := v_retention,
    v_retention_keep_table := v_retention_keep_table
  );
END;
$$
LANGUAGE 'plpgsql' VOLATILE;

COMMIT;
