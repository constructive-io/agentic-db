-- Deploy schemas/metaschema_modules_public/procedures/construct_blueprint/procedure to pg

-- requires: schemas/metaschema_modules_public/schema
-- requires: schemas/metaschema_modules_public/tables/blueprint/table
-- requires: schemas/metaschema_modules_public/tables/secure_table_provision/table
-- requires: schemas/metaschema_modules_public/tables/relation_provision/table

BEGIN;

CREATE FUNCTION metaschema_modules_public.construct_blueprint(
    blueprint_id uuid,
    schema_id uuid DEFAULT uuid_nil()
) RETURNS jsonb AS $$
#variable_conflict use_variable
DECLARE
    v_blueprint metaschema_modules_public.blueprint;
    v_definition jsonb;
    v_ref_map jsonb := '{}';

    -- Phase 1: tables
    v_table_entry jsonb;
    v_table_ref text;
    v_table_name text;
    v_table_use_rls boolean;
    v_table_grant_roles text[];
    v_table_grants jsonb;

    -- Nodes iteration
    v_node_entry jsonb;
    v_node_type text;
    v_node_data jsonb;
    v_node_idx integer;

    -- Policy iteration
    v_policy_entry jsonb;
    v_policy_type text;
    v_policy_data jsonb;
    v_policy_idx integer;

    -- Provision results
    v_provision metaschema_modules_public.secure_table_provision;
    v_table_id uuid;

    -- Fields conversion
    v_fields_array jsonb[];
    v_field_item jsonb;
    v_grant_array jsonb[];
    v_grant_item jsonb;

    -- Phase 2: relations
    v_relation_entry jsonb;
    v_relation_type text;
    v_source_ref text;
    v_target_ref text;
    v_source_table_id uuid;
    v_target_table_id uuid;
    v_field_name text;
    v_delete_action text;
    v_is_required boolean;
    v_junction_table_name text;
    v_rel_source_field_name text;
    v_rel_target_field_name text;
    v_rel_node_type text;
    v_rel_node_data jsonb;
    v_rel_policy_type text;
    v_rel_policy_data jsonb;
    v_rel_policy_permissive boolean;
    v_rel_grant_roles text[];
    v_rel_grant_privileges jsonb;
    v_rel_grant_array jsonb[];

    -- Phase 3: indexes
    v_index_entry jsonb;
    v_idx_table_ref text;
    v_idx_table_id uuid;
    v_idx_field_id uuid;
    v_idx_field_ids uuid[];
    v_idx_column_name text;
    v_idx_access_method text;
    v_idx_op_classes text[];
    v_idx_options jsonb;
    v_idx_name text;
    v_idx_is_unique boolean;
    v_idx_columns jsonb;
    v_idx_col jsonb;
    v_idx_col_idx integer;

    -- Phase 4: full_text_search
    v_fts_entry jsonb;
    v_fts_table_ref text;
    v_fts_table_id uuid;
    v_fts_field_id uuid;
    v_fts_source_field_ids uuid[];
    v_fts_weights text[];
    v_fts_langs text[];
    v_fts_source jsonb;
    v_fts_source_idx integer;
    v_fts_source_field_id uuid;
BEGIN
    -- Load the blueprint
    SELECT * INTO v_blueprint
    FROM metaschema_modules_public.blueprint
    WHERE id = blueprint_id;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: blueprint not found for id %', blueprint_id;
    END IF;

    -- Can only construct draft blueprints
    IF v_blueprint.status != 'draft' THEN
        RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: blueprint % has status %, expected draft', blueprint_id, v_blueprint.status;
    END IF;

    v_definition := v_blueprint.definition;

    BEGIN
        -- =====================================================================
        -- PHASE 1: Create tables
        -- For each table in definition.tables:
        --   nodes[] entries define the table data behaviors (Data* node types)
        --     - String entries: type with default params (e.g. "DataTimestamps")
        --     - Object entries: {"$type": "...", "data": {...}} with params
        --   First node creates the table (with fields + first policy)
        --   Remaining nodes augment the existing table
        --   policies[] entries define RLS policies using $type + data
        -- =====================================================================

        IF v_definition ? 'tables' AND jsonb_array_length(v_definition->'tables') > 0 THEN
            FOR v_table_entry IN SELECT jsonb_array_elements(v_definition->'tables') LOOP

                v_table_ref := v_table_entry->>'ref';
                v_table_name := v_table_entry->>'table_name';
                v_table_use_rls := COALESCE((v_table_entry->>'use_rls')::boolean, true);

                -- Resolve grant_roles
                IF v_table_entry ? 'grant_roles' THEN
                    v_table_grant_roles := ARRAY(
                        SELECT jsonb_array_elements_text(v_table_entry->'grant_roles')
                    );
                ELSE
                    v_table_grant_roles := ARRAY['authenticated'];
                END IF;

                -- Resolve grants (convert from jsonb array to jsonb[])
                v_table_grants := COALESCE(v_table_entry->'grants', '[]'::jsonb);
                v_grant_array := '{}';
                IF jsonb_array_length(v_table_grants) > 0 THEN
                    FOR v_grant_item IN SELECT jsonb_array_elements(v_table_grants) LOOP
                        v_grant_array := array_append(v_grant_array, v_grant_item);
                    END LOOP;
                END IF;

                -- Convert fields from jsonb array to jsonb[] PostgreSQL array
                v_fields_array := '{}';
                IF v_table_entry ? 'fields' AND jsonb_array_length(v_table_entry->'fields') > 0 THEN
                    FOR v_field_item IN SELECT jsonb_array_elements(v_table_entry->'fields') LOOP
                        v_fields_array := array_append(v_fields_array, v_field_item);
                    END LOOP;
                END IF;

                -- =============================================================
                -- Process nodes[] array
                -- Each entry is either:
                --   - A string: type with default params ("DataOwnershipInEntity")
                --   - An object: {"$type": "...", "data": {...}} with params
                -- First node creates the table; remaining nodes augment it
                -- =============================================================

                v_node_idx := 0;

                IF v_table_entry ? 'nodes' AND jsonb_array_length(v_table_entry->'nodes') > 0 THEN

                    -- Normalize first node entry
                    v_node_entry := v_table_entry->'nodes'->0;
                    IF jsonb_typeof(v_node_entry) = 'string' THEN
                        v_node_type := v_node_entry #>> '{}';
                        v_node_data := '{}'::jsonb;
                    ELSE
                        v_node_type := v_node_entry->>'$type';
                        v_node_data := COALESCE(v_node_entry->'data', '{}'::jsonb);
                    END IF;

                    -- First node + first policy creates the table
                    IF v_table_entry ? 'policies' AND jsonb_array_length(v_table_entry->'policies') > 0 THEN
                        v_policy_entry := v_table_entry->'policies'->0;
                        v_policy_type := v_policy_entry->>'$type';
                        v_policy_data := COALESCE(v_policy_entry->'data', '{}'::jsonb);

                        INSERT INTO metaschema_modules_public.secure_table_provision (
                            database_id, schema_id, table_name,
                            node_type, node_data, fields,
                            grant_roles, grant_privileges, use_rls,
                            policy_type, policy_privileges, policy_role,
                            policy_permissive, policy_name, policy_data
                        ) VALUES (
                            v_blueprint.database_id,
                            schema_id,
                            v_table_name,
                            v_node_type,
                            v_node_data,
                            v_fields_array,
                            v_table_grant_roles,
                            v_grant_array,
                            v_table_use_rls,
                            v_policy_type,
                            CASE WHEN v_policy_entry ? 'privileges'
                                THEN ARRAY(SELECT jsonb_array_elements_text(v_policy_entry->'privileges'))
                                ELSE NULL
                            END,
                            v_policy_entry->>'policy_role',
                            COALESCE((v_policy_entry->>'permissive')::boolean, true),
                            v_policy_entry->>'policy_name',
                            v_policy_data
                        )
                        RETURNING * INTO v_provision;

                        v_policy_idx := 1;
                    ELSE
                        -- No policies -- just create the table with first node
                        INSERT INTO metaschema_modules_public.secure_table_provision (
                            database_id, schema_id, table_name,
                            node_type, node_data, fields,
                            grant_roles, grant_privileges, use_rls
                        ) VALUES (
                            v_blueprint.database_id,
                            schema_id,
                            v_table_name,
                            v_node_type,
                            v_node_data,
                            v_fields_array,
                            v_table_grant_roles,
                            v_grant_array,
                            v_table_use_rls
                        )
                        RETURNING * INTO v_provision;

                        v_policy_idx := 0;
                    END IF;

                    v_table_id := v_provision.table_id;
                    v_node_idx := 1;

                    -- Remaining nodes (index 1+): augment existing table
                    WHILE v_node_idx < jsonb_array_length(v_table_entry->'nodes') LOOP
                        v_node_entry := v_table_entry->'nodes'->v_node_idx;

                        IF jsonb_typeof(v_node_entry) = 'string' THEN
                            v_node_type := v_node_entry #>> '{}';
                            v_node_data := '{}'::jsonb;
                        ELSE
                            v_node_type := v_node_entry->>'$type';
                            v_node_data := COALESCE(v_node_entry->'data', '{}'::jsonb);
                        END IF;

                        INSERT INTO metaschema_modules_public.secure_table_provision (
                            database_id, table_id,
                            node_type, node_data
                        ) VALUES (
                            v_blueprint.database_id,
                            v_table_id,
                            v_node_type,
                            v_node_data
                        );

                        v_node_idx := v_node_idx + 1;
                    END LOOP;

                ELSE
                    -- No nodes[] -- create table with fields only (no node_type)
                    INSERT INTO metaschema_modules_public.secure_table_provision (
                        database_id, schema_id, table_name,
                        fields,
                        grant_roles, grant_privileges, use_rls
                    ) VALUES (
                        v_blueprint.database_id,
                        schema_id,
                        v_table_name,
                        v_fields_array,
                        v_table_grant_roles,
                        v_grant_array,
                        v_table_use_rls
                    )
                    RETURNING * INTO v_provision;

                    v_table_id := v_provision.table_id;
                    v_policy_idx := 0;
                END IF;

                -- Store ref -> table_id mapping
                IF v_table_ref IS NOT NULL THEN
                    v_ref_map := v_ref_map || jsonb_build_object(v_table_ref, v_table_id);
                END IF;

                -- Remaining policies (index 1+): add to existing table
                IF v_table_entry ? 'policies' THEN
                    WHILE v_policy_idx < jsonb_array_length(v_table_entry->'policies') LOOP
                        v_policy_entry := v_table_entry->'policies'->v_policy_idx;
                        v_policy_type := v_policy_entry->>'$type';
                        v_policy_data := COALESCE(v_policy_entry->'data', '{}'::jsonb);

                        INSERT INTO metaschema_modules_public.secure_table_provision (
                            database_id, table_id,
                            grant_roles, grant_privileges,
                            policy_type, policy_privileges, policy_role,
                            policy_permissive, policy_name, policy_data
                        ) VALUES (
                            v_blueprint.database_id,
                            v_table_id,
                            v_table_grant_roles,
                            v_grant_array,
                            v_policy_type,
                            CASE WHEN v_policy_entry ? 'privileges'
                                THEN ARRAY(SELECT jsonb_array_elements_text(v_policy_entry->'privileges'))
                                ELSE NULL
                            END,
                            v_policy_entry->>'policy_role',
                            COALESCE((v_policy_entry->>'permissive')::boolean, true),
                            v_policy_entry->>'policy_name',
                            v_policy_data
                        );

                        v_policy_idx := v_policy_idx + 1;
                    END LOOP;
                END IF;
            END LOOP;
        END IF;

        -- =====================================================================
        -- PHASE 2: Create relations
        -- For each relation in definition.relations:
        --   - $type specifies the relation type (e.g. "RelationBelongsTo")
        --   - Resolve source_ref and target_ref to table_ids via ref_map
        --   - Junction table config is top-level: node_type, policy_type, etc.
        --   - INSERT into relation_provision
        -- =====================================================================

        IF v_definition ? 'relations' AND jsonb_array_length(v_definition->'relations') > 0 THEN
            FOR v_relation_entry IN SELECT jsonb_array_elements(v_definition->'relations') LOOP

                -- $type is the relation type (e.g. "RelationBelongsTo")
                v_relation_type := v_relation_entry->>'$type';
                v_source_ref := v_relation_entry->>'source_ref';
                v_target_ref := v_relation_entry->>'target_ref';

                -- Resolve refs to table_ids
                v_source_table_id := (v_ref_map->>v_source_ref)::uuid;
                v_target_table_id := (v_ref_map->>v_target_ref)::uuid;

                IF v_source_table_id IS NULL THEN
                    RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: unresolved source_ref "%" in relation', v_source_ref;
                END IF;

                IF v_target_table_id IS NULL THEN
                    RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: unresolved target_ref "%" in relation', v_target_ref;
                END IF;

                v_field_name := v_relation_entry->>'field_name';
                v_delete_action := v_relation_entry->>'delete_action';
                v_is_required := COALESCE((v_relation_entry->>'is_required')::boolean, true);
                v_junction_table_name := v_relation_entry->>'junction_table_name';

                -- Junction table config (top-level fields, pass-through to relation_provision)
                v_rel_source_field_name := v_relation_entry->>'source_field_name';
                v_rel_target_field_name := v_relation_entry->>'target_field_name';
                v_rel_node_type := v_relation_entry->>'node_type';
                v_rel_node_data := COALESCE(v_relation_entry->'node_data', '{}'::jsonb);
                v_rel_policy_type := v_relation_entry->>'policy_type';
                v_rel_policy_data := COALESCE(v_relation_entry->'policy_data', '{}'::jsonb);
                v_rel_policy_permissive := (v_relation_entry->>'policy_permissive')::boolean;
                v_rel_grant_privileges := COALESCE(v_relation_entry->'grant_privileges', '[]'::jsonb);

                -- Resolve grant_roles from JSON array to text[]
                IF v_relation_entry ? 'grant_roles' THEN
                    v_rel_grant_roles := ARRAY(
                        SELECT jsonb_array_elements_text(v_relation_entry->'grant_roles')
                    );
                ELSE
                    v_rel_grant_roles := NULL;
                END IF;

                -- Convert relation grant_privileges from jsonb to jsonb[]
                v_rel_grant_array := '{}';
                IF jsonb_array_length(v_rel_grant_privileges) > 0 THEN
                    FOR v_grant_item IN SELECT jsonb_array_elements(v_rel_grant_privileges) LOOP
                        v_rel_grant_array := array_append(v_rel_grant_array, v_grant_item);
                    END LOOP;
                END IF;

                INSERT INTO metaschema_modules_public.relation_provision (
                    database_id,
                    relation_type,
                    source_table_id,
                    target_table_id,
                    field_name,
                    delete_action,
                    is_required,
                    junction_table_name,
                    source_field_name,
                    target_field_name,
                    node_type,
                    node_data,
                    grant_roles,
                    grant_privileges,
                    policy_type,
                    policy_permissive,
                    policy_data
                ) VALUES (
                    v_blueprint.database_id,
                    v_relation_type,
                    v_source_table_id,
                    v_target_table_id,
                    v_field_name,
                    v_delete_action,
                    v_is_required,
                    v_junction_table_name,
                    v_rel_source_field_name,
                    v_rel_target_field_name,
                    v_rel_node_type,
                    v_rel_node_data,
                    v_rel_grant_roles,
                    v_rel_grant_array,
                    v_rel_policy_type,
                    v_rel_policy_permissive,
                    v_rel_policy_data
                );

            END LOOP;
        END IF;

        -- =====================================================================
        -- PHASE 3: Create indexes
        -- For each index in definition.indexes:
        --   - Resolve table_ref to table_id via ref_map
        --   - Resolve column name(s) to field_id(s) via metaschema_public.field
        --   - INSERT into metaschema_public.index
        -- Supports: BTREE, HNSW, GIN, GIST, BM25, and any other access_method
        -- =====================================================================

        IF v_definition ? 'indexes' AND jsonb_typeof(v_definition->'indexes') = 'array'
           AND jsonb_array_length(v_definition->'indexes') > 0 THEN
            FOR v_index_entry IN SELECT jsonb_array_elements(v_definition->'indexes') LOOP

                v_idx_table_ref := v_index_entry->>'table_ref';
                v_idx_table_id := (v_ref_map->>v_idx_table_ref)::uuid;

                IF v_idx_table_id IS NULL THEN
                    RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: unresolved table_ref "%" in index definition', v_idx_table_ref;
                END IF;

                v_idx_access_method := UPPER(v_index_entry->>'access_method');
                v_idx_options := v_index_entry->'options';
                v_idx_is_unique := COALESCE((v_index_entry->>'is_unique')::boolean, false);

                -- Resolve op_classes from JSON array to text[]
                IF v_index_entry ? 'op_classes' AND jsonb_array_length(v_index_entry->'op_classes') > 0 THEN
                    v_idx_op_classes := ARRAY(
                        SELECT jsonb_array_elements_text(v_index_entry->'op_classes')
                    );
                ELSE
                    v_idx_op_classes := NULL;
                END IF;

                -- Support both single "column" and multi-column "columns" array
                IF v_index_entry ? 'columns' AND jsonb_typeof(v_index_entry->'columns') = 'array' THEN
                    -- Multi-column index: resolve each column name to field_id
                    v_idx_field_ids := '{}';
                    v_idx_col_idx := 0;
                    WHILE v_idx_col_idx < jsonb_array_length(v_index_entry->'columns') LOOP
                        v_idx_column_name := v_index_entry->'columns'->>v_idx_col_idx;

                        SELECT id INTO v_idx_field_id
                        FROM metaschema_public.field
                        WHERE table_id = v_idx_table_id AND name = v_idx_column_name;

                        IF v_idx_field_id IS NULL THEN
                            RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: field "%" not found on table ref "%" for index', v_idx_column_name, v_idx_table_ref;
                        END IF;

                        v_idx_field_ids := array_append(v_idx_field_ids, v_idx_field_id);
                        v_idx_col_idx := v_idx_col_idx + 1;
                    END LOOP;
                ELSE
                    -- Single column index
                    v_idx_column_name := v_index_entry->>'column';

                    SELECT id INTO v_idx_field_id
                    FROM metaschema_public.field
                    WHERE table_id = v_idx_table_id AND name = v_idx_column_name;

                    IF v_idx_field_id IS NULL THEN
                        RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: field "%" not found on table ref "%" for index', v_idx_column_name, v_idx_table_ref;
                    END IF;

                    v_idx_field_ids := ARRAY[v_idx_field_id];
                END IF;

                -- Derive index name if not provided
                v_idx_name := v_index_entry->>'name';
                IF v_idx_name IS NULL OR v_idx_name = '' THEN
                    v_idx_name := v_idx_table_ref || '_' || v_idx_column_name || '_' || LOWER(v_idx_access_method) || '_idx';
                END IF;

                INSERT INTO metaschema_public.index (
                    database_id,
                    table_id,
                    name,
                    field_ids,
                    access_method,
                    op_classes,
                    options,
                    is_unique
                ) VALUES (
                    v_blueprint.database_id,
                    v_idx_table_id,
                    v_idx_name,
                    v_idx_field_ids,
                    v_idx_access_method,
                    v_idx_op_classes,
                    v_idx_options,
                    v_idx_is_unique
                );

            END LOOP;
        END IF;

        -- =====================================================================
        -- PHASE 4: Create full-text search configurations
        -- For each entry in definition.full_text_searches:
        --   - Resolve table_ref to table_id via ref_map
        --   - Resolve field (tsvector column) to field_id
        --   - Resolve sources[].field names to field_ids
        --   - INSERT into metaschema_public.full_text_search
        -- =====================================================================

        IF v_definition ? 'full_text_searches' AND jsonb_typeof(v_definition->'full_text_searches') = 'array'
           AND jsonb_array_length(v_definition->'full_text_searches') > 0 THEN
            FOR v_fts_entry IN SELECT jsonb_array_elements(v_definition->'full_text_searches') LOOP

                v_fts_table_ref := v_fts_entry->>'table_ref';
                v_fts_table_id := (v_ref_map->>v_fts_table_ref)::uuid;

                IF v_fts_table_id IS NULL THEN
                    RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: unresolved table_ref "%" in full_text_search definition', v_fts_table_ref;
                END IF;

                -- Resolve the tsvector field
                SELECT id INTO v_fts_field_id
                FROM metaschema_public.field
                WHERE table_id = v_fts_table_id AND name = (v_fts_entry->>'field');

                IF v_fts_field_id IS NULL THEN
                    RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: tsvector field "%" not found on table ref "%"', v_fts_entry->>'field', v_fts_table_ref;
                END IF;

                -- Resolve each source field
                v_fts_source_field_ids := '{}';
                v_fts_weights := '{}';
                v_fts_langs := '{}';
                v_fts_source_idx := 0;

                WHILE v_fts_source_idx < jsonb_array_length(v_fts_entry->'sources') LOOP
                    v_fts_source := v_fts_entry->'sources'->v_fts_source_idx;

                    SELECT id INTO v_fts_source_field_id
                    FROM metaschema_public.field
                    WHERE table_id = v_fts_table_id AND name = (v_fts_source->>'field');

                    IF v_fts_source_field_id IS NULL THEN
                        RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: source field "%" not found on table ref "%" for full_text_search', v_fts_source->>'field', v_fts_table_ref;
                    END IF;

                    v_fts_source_field_ids := array_append(v_fts_source_field_ids, v_fts_source_field_id);
                    v_fts_weights := array_append(v_fts_weights, COALESCE(v_fts_source->>'weight', 'D'));
                    v_fts_langs := array_append(v_fts_langs, COALESCE(v_fts_source->>'lang', 'pg_catalog.simple'));

                    v_fts_source_idx := v_fts_source_idx + 1;
                END LOOP;

                INSERT INTO metaschema_public.full_text_search (
                    database_id,
                    table_id,
                    field_id,
                    field_ids,
                    weights,
                    langs
                ) VALUES (
                    v_blueprint.database_id,
                    v_fts_table_id,
                    v_fts_field_id,
                    v_fts_source_field_ids,
                    v_fts_weights,
                    v_fts_langs
                );

            END LOOP;
        END IF;

        -- =====================================================================
        -- SUCCESS: Update blueprint status
        -- =====================================================================

        UPDATE metaschema_modules_public.blueprint
        SET status = 'constructed',
            ref_map = v_ref_map,
            constructed_definition = v_definition,
            constructed_at = now(),
            error_details = NULL,
            updated_at = now()
        WHERE id = blueprint_id;

    EXCEPTION WHEN OTHERS THEN
        -- =====================================================================
        -- FAILURE: Record error and mark as failed.
        -- We do NOT re-raise here because the RAISE would propagate out of
        -- the function and abort the entire transaction, rolling back the
        -- status='failed' UPDATE. Instead we return NULL to signal failure.
        -- Callers should check for a NULL return and inspect status/error_details.
        -- =====================================================================

        UPDATE metaschema_modules_public.blueprint
        SET status = 'failed',
            error_details = SQLERRM,
            updated_at = now()
        WHERE id = blueprint_id;

        RETURN NULL;
    END;

    RETURN v_ref_map;
END;
$$
LANGUAGE 'plpgsql' VOLATILE;

COMMENT ON FUNCTION metaschema_modules_public.construct_blueprint IS
    'Executes a draft blueprint definition. Four phases: (1) create tables with nodes[], fields, and policies[], (2) create relations between tables, (3) create indexes on table fields (supports BTREE, HNSW, GIN, GIST, BM25, etc.), (4) create full-text search configurations with weighted multi-field TSVector support. nodes[] entries can be strings or {$type, data} objects. Relations use $type for relation_type with junction config as top-level fields (node_type, policy_type, grant_roles, grant_privileges, policy_data, policy_permissive, source_field_name, target_field_name, node_data). Indexes reference table_ref + column name(s) and are resolved to field_ids. Full-text searches reference table_ref + tsvector field + source fields with weights/langs. Builds a ref_map of local ref names to created table UUIDs. Updates blueprint status to constructed (or failed with error_details). Returns the ref_map.';

COMMIT;
