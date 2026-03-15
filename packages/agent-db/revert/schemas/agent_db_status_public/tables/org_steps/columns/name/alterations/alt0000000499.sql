-- Revert: schemas/agent_db_status_public/tables/org_steps/columns/name/alterations/alt0000000499


ALTER TABLE agent_db_status_public.org_steps 
  ALTER COLUMN name DROP NOT NULL;


