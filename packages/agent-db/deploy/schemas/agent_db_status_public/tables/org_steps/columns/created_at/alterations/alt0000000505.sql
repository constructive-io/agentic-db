-- Deploy: schemas/agent_db_status_public/tables/org_steps/columns/created_at/alterations/alt0000000505
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table
-- requires: schemas/agent_db_status_public/tables/org_steps/columns/created_at/column


ALTER TABLE agent_db_status_public.org_steps 
  ALTER COLUMN created_at SET DEFAULT now();

