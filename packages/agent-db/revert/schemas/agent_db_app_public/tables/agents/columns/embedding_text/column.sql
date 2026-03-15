-- Revert: schemas/agent_db_app_public/tables/agents/columns/embedding_text/column


ALTER TABLE agent_db_app_public.agents 
  DROP COLUMN embedding_text RESTRICT;


