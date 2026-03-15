-- Deploy: schemas/agent_db_status_public/tables/org_steps/columns/count/alterations/alt0000000501
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table
-- requires: schemas/agent_db_status_public/tables/org_steps/columns/count/column


ALTER TABLE agent_db_status_public.org_steps 
  ALTER COLUMN count SET NOT NULL;

