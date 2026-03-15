-- Deploy: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/entity_id/alterations/alt0000001997
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/entity_id/column


COMMENT ON COLUMN "agent_db_permissions_public".org_permission_defaults.entity_id IS 'References the entity these default permissions apply to';

