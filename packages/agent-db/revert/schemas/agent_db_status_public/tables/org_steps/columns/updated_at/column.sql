-- Revert: schemas/agent_db_status_public/tables/org_steps/columns/updated_at/column


ALTER TABLE agent_db_status_public.org_steps 
  DROP COLUMN updated_at RESTRICT;


