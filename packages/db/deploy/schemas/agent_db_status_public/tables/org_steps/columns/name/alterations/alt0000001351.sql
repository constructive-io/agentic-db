-- Deploy: schemas/agent_db_status_public/tables/org_steps/columns/name/alterations/alt0000001351
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table
-- requires: schemas/agent_db_status_public/tables/org_steps/columns/name/column


ALTER TABLE "agent_db_status_public".org_steps 
  ALTER COLUMN name SET NOT NULL;

