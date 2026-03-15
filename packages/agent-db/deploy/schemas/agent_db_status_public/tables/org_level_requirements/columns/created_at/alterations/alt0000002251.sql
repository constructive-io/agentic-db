-- Deploy: schemas/agent_db_status_public/tables/org_level_requirements/columns/created_at/alterations/alt0000002251
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/columns/created_at/column


ALTER TABLE "agent_db_status_public".org_level_requirements 
  ALTER COLUMN created_at SET DEFAULT now();

