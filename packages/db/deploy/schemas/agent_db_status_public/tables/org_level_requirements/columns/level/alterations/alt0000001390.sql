-- Deploy: schemas/agent_db_status_public/tables/org_level_requirements/columns/level/alterations/alt0000001390
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/columns/level/column


ALTER TABLE "agent_db_status_public".org_level_requirements 
  ALTER COLUMN level SET NOT NULL;

