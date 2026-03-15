-- Deploy: schemas/agent_db_status_public/tables/org_steps/columns/count/alterations/alt0000002205
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table
-- requires: schemas/agent_db_status_public/tables/org_steps/columns/count/column


ALTER TABLE "agent_db_status_public".org_steps 
  ALTER COLUMN count SET NOT NULL;

