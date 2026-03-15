-- Deploy: schemas/agent_db_status_public/tables/org_level_requirements/columns/name/alterations/alt0000002240
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/columns/name/column


ALTER TABLE "agent_db_status_public".org_level_requirements 
  ALTER COLUMN name SET NOT NULL;

