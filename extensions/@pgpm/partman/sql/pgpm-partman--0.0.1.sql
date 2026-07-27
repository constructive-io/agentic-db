\echo Use "CREATE EXTENSION pgpm-partman" to load this file. \quit
DO $EOFCODE$
BEGIN
  EXECUTE 'CREATE SCHEMA IF NOT EXISTS partman';
  EXECUTE 'CREATE EXTENSION pg_partman SCHEMA partman';
END;
$EOFCODE$;

GRANT USAGE, CREATE ON SCHEMA partman TO authenticated;

GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA partman TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA partman TO authenticated;

ALTER DEFAULT PRIVILEGES IN SCHEMA partman
  GRANT EXECUTE ON FUNCTIONS TO authenticated;

ALTER DEFAULT PRIVILEGES IN SCHEMA partman
  GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO authenticated;

CREATE FUNCTION partman.create_parent_with_retention(
  v_parent_table text,
  v_control text,
  v_type text DEFAULT 'range',
  partition_interval text DEFAULT '1 day',
  v_premake int DEFAULT 2,
  v_retention text DEFAULT NULL,
  v_retention_keep_table boolean DEFAULT true
) RETURNS void AS $EOFCODE$
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
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

CREATE FUNCTION partman.create_parent_by_id(
  v_table_id uuid,
  v_control text,
  v_type text DEFAULT 'range',
  partition_interval text DEFAULT '1 day',
  v_premake int DEFAULT 2,
  v_retention text DEFAULT NULL,
  v_retention_keep_table boolean DEFAULT true
) RETURNS void AS $EOFCODE$
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
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE FUNCTION partman.remove_parent_by_id(
  v_table_id uuid
) RETURNS void AS $EOFCODE$
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
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE FUNCTION partman.verify_parent_by_id(
  v_table_id uuid
) RETURNS boolean AS $EOFCODE$
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
$EOFCODE$ LANGUAGE plpgsql STABLE;

CREATE FUNCTION partman.run_maintenance_by_id(
  v_table_id uuid DEFAULT NULL,
  v_analyze boolean DEFAULT true
) RETURNS void AS $EOFCODE$
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
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

CREATE FUNCTION partman.tg_after_insert_partition() RETURNS trigger AS $EOFCODE$
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
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER partman_after_insert_partition
  AFTER INSERT
  ON metaschema_public.partition
  FOR EACH ROW
  EXECUTE PROCEDURE partman.tg_after_insert_partition();