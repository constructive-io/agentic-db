-- Deploy: schemas/agent_db_status_public/tables/org_level_requirements/columns/required_count/alterations/alt0000001393
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/columns/required_count/column


ALTER TABLE "agent_db_status_public".org_level_requirements 
  ALTER COLUMN required_count SET NOT NULL;

