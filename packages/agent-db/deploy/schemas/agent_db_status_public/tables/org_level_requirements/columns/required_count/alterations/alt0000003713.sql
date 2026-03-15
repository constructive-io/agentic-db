-- Deploy: schemas/agent_db_status_public/tables/org_level_requirements/columns/required_count/alterations/alt0000003713
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/columns/required_count/column


COMMENT ON COLUMN "agent_db_status_public".org_level_requirements.required_count IS 'Number of steps needed to satisfy this requirement';

