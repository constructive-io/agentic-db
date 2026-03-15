-- Deploy: schemas/agent_db_status_public/tables/org_level_requirements/columns/required_count/alterations/alt0000002245
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/columns/required_count/column


ALTER TABLE "agent_db_status_public".org_level_requirements 
  ALTER COLUMN required_count SET NOT NULL;

