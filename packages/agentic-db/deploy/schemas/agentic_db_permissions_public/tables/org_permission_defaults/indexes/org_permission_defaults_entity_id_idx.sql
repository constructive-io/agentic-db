-- Deploy: schemas/agentic_db_permissions_public/tables/org_permission_defaults/indexes/org_permission_defaults_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_permissions_public/tables/org_permission_defaults/table
-- requires: schemas/agentic_db_permissions_public/tables/org_permission_defaults/columns/entity_id/column


CREATE INDEX org_permission_defaults_entity_id_idx ON agentic_db_permissions_public.org_permission_defaults USING BTREE ( entity_id );

