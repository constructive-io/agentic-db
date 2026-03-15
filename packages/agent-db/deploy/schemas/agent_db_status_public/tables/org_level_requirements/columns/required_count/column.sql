-- Deploy: schemas/agent_db_status_public/tables/org_level_requirements/columns/required_count/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/table


ALTER TABLE "agent_db_status_public".org_level_requirements 
  ADD COLUMN required_count int;

