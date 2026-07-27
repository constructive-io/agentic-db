-- Deploy schemas/partman/procedures/run_maintenance_by_id to pg

-- requires: extensions/pg_partman

BEGIN;

CREATE FUNCTION partman.run_maintenance_by_id(
  v_table_id uuid DEFAULT NULL,
  v_analyze boolean DEFAULT true
) RETURNS void AS $$
DECLARE
  v_parent_table text;
BEGIN
  IF v_table_id IS NOT NULL THEN
    SELECT s.schema_name || '.' || t.name INTO v_parent_table
      FROM metaschema_public.table t
      JOIN metaschema_public.schema s
        ON (s.id = t.schema_id AND s.database_id = t.database_id)
      WHERE t.id = v_table_id;

    IF v_parent_table IS NULL THEN
      RAISE EXCEPTION 'partman.run_maintenance_by_id: table_id % not found', v_table_id;
    END IF;
  END IF;

  PERFORM partman.run_maintenance(
    p_parent_table := v_parent_table,
    p_analyze := v_analyze
  );
END;
$$
LANGUAGE 'plpgsql' VOLATILE SECURITY DEFINER;

-- SECURITY DEFINER justification: same as create_parent_with_retention.
-- partman.run_maintenance internally creates new partition tables and
-- sets their owner to postgres, requiring SET ROLE. No user-data access.

COMMIT;
