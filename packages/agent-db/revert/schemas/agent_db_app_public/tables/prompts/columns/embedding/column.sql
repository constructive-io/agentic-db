-- Revert: schemas/agent_db_app_public/tables/prompts/columns/embedding/column


ALTER TABLE agent_db_app_public.prompts 
  DROP COLUMN embedding RESTRICT;


