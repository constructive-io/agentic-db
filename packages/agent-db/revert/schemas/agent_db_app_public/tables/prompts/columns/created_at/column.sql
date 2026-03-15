-- Revert: schemas/agent_db_app_public/tables/prompts/columns/created_at/column


ALTER TABLE agent_db_app_public.prompts 
  DROP COLUMN created_at RESTRICT;


