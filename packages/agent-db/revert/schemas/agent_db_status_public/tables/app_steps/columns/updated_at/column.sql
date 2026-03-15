-- Revert: schemas/agent_db_status_public/tables/app_steps/columns/updated_at/column


ALTER TABLE agent_db_status_public.app_steps 
  DROP COLUMN updated_at RESTRICT;


