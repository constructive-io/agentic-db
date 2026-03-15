-- Deploy: schemas/agent_db_status_public/tables/org_steps/columns/name/alterations/alt0000002203
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table
-- requires: schemas/agent_db_status_public/tables/org_steps/columns/name/column


ALTER TABLE "agent_db_status_public".org_steps 
  ALTER COLUMN name SET NOT NULL;

