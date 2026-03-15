-- Revert: schemas/agent_db_status_public/tables/org_steps/columns/updated_at/alterations/alt0000000506


ALTER TABLE agent_db_status_public.org_steps 
  ALTER COLUMN updated_at DROP DEFAULT;


