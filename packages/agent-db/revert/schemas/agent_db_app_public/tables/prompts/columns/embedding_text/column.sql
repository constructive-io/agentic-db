-- Revert: schemas/agent_db_app_public/tables/prompts/columns/embedding_text/column


ALTER TABLE agent_db_app_public.prompts 
  DROP COLUMN embedding_text RESTRICT;


