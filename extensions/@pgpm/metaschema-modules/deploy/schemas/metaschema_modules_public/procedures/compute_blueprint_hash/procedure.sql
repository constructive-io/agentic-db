-- Deploy schemas/metaschema_modules_public/procedures/compute_blueprint_hash/procedure to pg

-- requires: schemas/metaschema_modules_public/schema
-- requires: schemas/metaschema_modules_public/tables/blueprint_template/table
-- requires: schemas/metaschema_modules_public/tables/blueprint/table

BEGIN;

-- Trigger function that computes Merkle-style content hashes for blueprint definitions.
-- On INSERT/UPDATE of definition, computes:
--   1. table_hashes: a JSONB map of {ref: uuid_generate_v5(uuid_ns_url(), table_entry::text)}
--      for each table in definition.tables[]
--   2. definition_hash: a Merkle root uuid_generate_v5 over the ordered concatenation of
--      table hashes plus the relations[] hash, indexes[] hash, and full_text_searches[] hash
--      (if present)
--
-- Uses the same uuid_generate_v5(uuid_ns_url(), ...) pattern as object_store.object_hash_uuid().
-- jsonb::text provides canonical serialization (keys sorted lexically) for deterministic hashing.
CREATE FUNCTION metaschema_modules_public.tg_compute_blueprint_hash()
RETURNS TRIGGER AS $$
DECLARE
    v_definition jsonb;
    v_table_entry jsonb;
    v_table_ref text;
    v_table_hash uuid;
    v_table_hashes jsonb := '{}';
    v_hash_parts text := '';
    v_relations_hash uuid;
    v_indexes_hash uuid;
    v_fts_hash uuid;
BEGIN
    v_definition := NEW.definition;

    -- Skip if definition is NULL (shouldn't happen due to NOT NULL, but defensive)
    IF v_definition IS NULL THEN
        NEW.definition_hash := NULL;
        NEW.table_hashes := NULL;
        RETURN NEW;
    END IF;

    -- Compute individual table hashes
    IF v_definition ? 'tables' AND jsonb_typeof(v_definition->'tables') = 'array' THEN
        FOR v_table_entry IN SELECT jsonb_array_elements(v_definition->'tables') LOOP
            v_table_ref := v_table_entry->>'ref';

            -- Hash the entire table entry canonically
            v_table_hash := uuid_generate_v5(uuid_ns_url(), v_table_entry::text);

            -- Store in map (use ref as key, fall back to hash itself for unnamed tables)
            IF v_table_ref IS NOT NULL THEN
                v_table_hashes := v_table_hashes || jsonb_build_object(v_table_ref, v_table_hash);
            END IF;

            -- Accumulate ordered hash parts for Merkle root
            v_hash_parts := v_hash_parts || v_table_hash::text;
        END LOOP;
    END IF;

    -- Include relations in the Merkle root (if present)
    IF v_definition ? 'relations' AND jsonb_typeof(v_definition->'relations') = 'array'
       AND jsonb_array_length(v_definition->'relations') > 0 THEN
        v_relations_hash := uuid_generate_v5(uuid_ns_url(), (v_definition->'relations')::text);
        v_hash_parts := v_hash_parts || v_relations_hash::text;
    END IF;

    -- Include indexes in the Merkle root (if present)
    IF v_definition ? 'indexes' AND jsonb_typeof(v_definition->'indexes') = 'array'
       AND jsonb_array_length(v_definition->'indexes') > 0 THEN
        v_indexes_hash := uuid_generate_v5(uuid_ns_url(), (v_definition->'indexes')::text);
        v_hash_parts := v_hash_parts || v_indexes_hash::text;
    END IF;

    -- Include full_text_searches in the Merkle root (if present)
    IF v_definition ? 'full_text_searches' AND jsonb_typeof(v_definition->'full_text_searches') = 'array'
       AND jsonb_array_length(v_definition->'full_text_searches') > 0 THEN
        v_fts_hash := uuid_generate_v5(uuid_ns_url(), (v_definition->'full_text_searches')::text);
        v_hash_parts := v_hash_parts || v_fts_hash::text;
    END IF;

    -- Compute Merkle root from all hash parts
    IF v_hash_parts != '' THEN
        NEW.definition_hash := uuid_generate_v5(uuid_ns_url(), v_hash_parts);
    ELSE
        NEW.definition_hash := NULL;
    END IF;

    NEW.table_hashes := v_table_hashes;

    RETURN NEW;
END;
$$
LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION metaschema_modules_public.tg_compute_blueprint_hash IS
    'Trigger function that computes Merkle-style content hashes for blueprint definitions. Produces table_hashes (per-table UUIDv5 hashes keyed by ref) and definition_hash (Merkle root over ordered table hashes + relations hash + indexes hash + full_text_searches hash). Uses uuid_generate_v5(uuid_ns_url(), jsonb::text) for deterministic content-addressable hashing, following the same pattern as object_store.object_hash_uuid(). Enables structural comparison, deduplication, and provenance tracking at both the table and blueprint level.';

-- Attach to blueprint table (fire after validation, hence _200 prefix)
CREATE TRIGGER _200_compute_blueprint_hash
    BEFORE INSERT OR UPDATE OF definition ON metaschema_modules_public.blueprint
    FOR EACH ROW
    EXECUTE FUNCTION metaschema_modules_public.tg_compute_blueprint_hash();

-- Attach to blueprint_template table
CREATE TRIGGER _200_compute_blueprint_hash
    BEFORE INSERT OR UPDATE OF definition ON metaschema_modules_public.blueprint_template
    FOR EACH ROW
    EXECUTE FUNCTION metaschema_modules_public.tg_compute_blueprint_hash();

COMMIT;
