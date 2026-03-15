-- Revert: schemas/agent_db_app_public/tables/workflows/columns/updated_at/column


ALTER TABLE agent_db_app_public.workflows 
  DROP COLUMN updated_at RESTRICT;


