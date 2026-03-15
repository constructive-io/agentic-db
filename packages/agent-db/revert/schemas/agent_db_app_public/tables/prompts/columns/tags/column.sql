-- Revert: schemas/agent_db_app_public/tables/prompts/columns/tags/column


ALTER TABLE agent_db_app_public.prompts 
  DROP COLUMN tags RESTRICT;


