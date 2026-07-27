-- Deploy schemas/partman/procedures/verify_parent_by_id to pg

-- requires: extensions/pg_partman

BEGIN;

CREATE FUNCTION partman.verify_parent_by_id(
  v_table_id uuid
) RETURNS boolean AS $$
DECLARE
  v_parent_table text;
  v_found boolean;
BEGIN
  SELECT s.schema_name || '.' || t.name INTO v_parent_table
    FROM metaschema_public.table t
    JOIN metaschema_public.schema s
      ON (s.id = t.schema_id AND s.database_id = t.database_id)
    WHERE t.id = v_table_id;

  IF v_parent_table IS NULL THEN
    RETURN false;
  END IF;

  SELECT EXISTS(
    SELECT 1 FROM partman.part_config
      WHERE parent_table = v_parent_table
  ) INTO v_found;

  RETURN v_found;
END;
$$
LANGUAGE 'plpgsql' STABLE;

COMMIT;
