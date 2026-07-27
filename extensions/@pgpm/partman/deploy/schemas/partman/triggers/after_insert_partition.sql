-- Deploy schemas/partman/triggers/after_insert_partition to pg

-- requires: extensions/pg_partman
-- requires: schemas/partman/procedures/create_parent_with_retention
-- requires: metaschema-schema:schemas/metaschema_public/tables/partition/table
-- requires: metaschema-schema:schemas/metaschema_public/tables/table/table
-- requires: metaschema-schema:schemas/metaschema_public/tables/schema/table
-- requires: metaschema-schema:schemas/metaschema_public/tables/field/table

BEGIN;

-- Parents partition configs registered in metaschema_public.partition with
-- pg_partman. Runs on both platform databases and consumer databases
-- deployed from exported packages; guarded by is_parented and
-- partman.part_config so re-inserts of existing configs are no-ops.
CREATE FUNCTION partman.tg_after_insert_partition()
RETURNS TRIGGER AS $$
DECLARE
  v_schema_name text;
  v_table_name text;
  v_control_column text;
  v_parent_table text;
BEGIN
  SELECT s.schema_name, t.name
    INTO v_schema_name, v_table_name
    FROM metaschema_public.table t
    JOIN metaschema_public.schema s
      ON (s.id = t.schema_id AND s.database_id = t.database_id)
    WHERE t.id = NEW.table_id;

  IF NOT FOUND THEN
    RETURN NEW;
  END IF;

  -- Resolve the partition key column name for pg_partman control
  SELECT f.name INTO v_control_column
    FROM metaschema_public.field f
    WHERE f.id = NEW.partition_key_id;

  IF NEW."interval" IS NULL OR v_control_column IS NULL OR NEW.is_parented THEN
    RETURN NEW;
  END IF;

  v_parent_table := v_schema_name || '.' || v_table_name;

  IF EXISTS (
    SELECT 1 FROM partman.part_config
      WHERE parent_table = v_parent_table
  ) THEN
    RETURN NEW;
  END IF;

  PERFORM partman.create_parent_with_retention(
    v_parent_table         := v_parent_table,
    v_control              := v_control_column,
    v_type                 := NEW.strategy,
    partition_interval     := NEW."interval",
    v_premake              := NEW.premake,
    v_retention            := NEW.retention,
    v_retention_keep_table := NEW.retention_keep_table
  );

  UPDATE metaschema_public.partition
    SET is_parented = true
    WHERE id = NEW.id;

  RETURN NEW;
END;
$$
LANGUAGE 'plpgsql' VOLATILE;

CREATE TRIGGER partman_after_insert_partition
  AFTER INSERT ON metaschema_public.partition
  FOR EACH ROW
  EXECUTE PROCEDURE partman.tg_after_insert_partition();

COMMIT;
