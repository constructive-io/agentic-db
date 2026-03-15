-- Deploy: schemas/agent_db_status_public/tables/app_levels/columns/description/alterations/alt0000001898
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_levels/columns/description/column


COMMENT ON COLUMN "agent_db_status_public".app_levels.description IS E'Human-readable description of what this level represents';

