-- Deploy schemas/partman/procedures/remove_parent_by_id to pg

-- requires: extensions/pg_partman

BEGIN;

CREATE FUNCTION partman.remove_parent_by_id(
  v_table_id uuid
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
    RAISE EXCEPTION 'partman.remove_parent_by_id: table_id % not found', v_table_id;
  END IF;

  DELETE FROM partman.part_config
    WHERE parent_table = v_parent_table;
END;
$$
LANGUAGE 'plpgsql' VOLATILE;

COMMIT;
