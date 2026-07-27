-- Deploy schemas/partman/procedures/create_parent_with_retention to pg

-- requires: extensions/pg_partman

BEGIN;

CREATE FUNCTION partman.create_parent_with_retention(
  v_parent_table text,
  v_control text,
  v_type text DEFAULT 'range',
  partition_interval text DEFAULT '1 day',
  v_premake int DEFAULT 2,
  v_retention text DEFAULT NULL,
  v_retention_keep_table boolean DEFAULT true
) RETURNS void AS $$
BEGIN
  PERFORM partman.create_parent(
    p_parent_table := v_parent_table,
    p_control := v_control,
    p_type := v_type,
    p_interval := partition_interval,
    p_premake := v_premake
  );

  IF v_retention IS NOT NULL THEN
    UPDATE partman.part_config
      SET retention = v_retention,
          retention_keep_table = v_retention_keep_table
      WHERE parent_table = v_parent_table;
  END IF;
END;
$$
LANGUAGE 'plpgsql' VOLATILE SECURITY DEFINER;

-- SECURITY DEFINER justification:
-- pg_partman 5.x create_parent runs as SECURITY INVOKER and internally
-- executes "ALTER TABLE ... OWNER TO postgres" which requires SET ROLE.
-- The authenticated role cannot SET ROLE to postgres.
-- This function only performs DDL (creating partitions/templates) and
-- writes to part_config (a system config table). It does NOT access any
-- user-data tables, so RLS is irrelevant. This follows the same pattern
-- as metaschema_private.create_database_trigger which is also SECURITY
-- DEFINER for trigger-fired DDL that needs superuser privileges.

COMMIT;
