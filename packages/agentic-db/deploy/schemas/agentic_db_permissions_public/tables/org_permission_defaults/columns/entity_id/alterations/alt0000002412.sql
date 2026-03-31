-- Deploy: schemas/agentic_db_permissions_public/tables/org_permission_defaults/columns/entity_id/alterations/alt0000002412
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permission_defaults/columns/entity_id/column


COMMENT ON COLUMN agentic_db_permissions_public.org_permission_defaults.entity_id IS 'References the entity these default permissions apply to';

