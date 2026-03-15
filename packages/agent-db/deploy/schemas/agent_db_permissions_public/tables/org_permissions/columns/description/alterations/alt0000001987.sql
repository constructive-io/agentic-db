-- Deploy: schemas/agent_db_permissions_public/tables/org_permissions/columns/description/alterations/alt0000001987
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/columns/description/column


COMMENT ON COLUMN "agent_db_permissions_public".org_permissions.description IS E'Human-readable description of what this permission allows';

