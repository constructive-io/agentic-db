-- Deploy: schemas/agent_db_permissions_public/tables/org_permissions/columns/description/alterations/alt0000000283
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/columns/description/column


COMMENT ON COLUMN agent_db_permissions_public.org_permissions.description IS E'Human-readable description of what this permission allows';

