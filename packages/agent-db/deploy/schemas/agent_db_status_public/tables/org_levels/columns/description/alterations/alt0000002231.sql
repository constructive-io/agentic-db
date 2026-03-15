-- Deploy: schemas/agent_db_status_public/tables/org_levels/columns/description/alterations/alt0000002231
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_levels/columns/description/column


COMMENT ON COLUMN "agent_db_status_public".org_levels.description IS E'Human-readable description of what this level represents';

