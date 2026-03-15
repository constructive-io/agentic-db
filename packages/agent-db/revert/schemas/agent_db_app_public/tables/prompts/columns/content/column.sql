-- Revert: schemas/agent_db_app_public/tables/prompts/columns/content/column


ALTER TABLE agent_db_app_public.prompts 
  DROP COLUMN content RESTRICT;


