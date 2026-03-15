-- Deploy: schemas/agent_db_status_public/tables/app_level_requirements/columns/description/alterations/alt0000003377
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/columns/description/column


COMMENT ON COLUMN "agent_db_status_public".app_level_requirements.description IS E'Human-readable description of what this requirement entails';

