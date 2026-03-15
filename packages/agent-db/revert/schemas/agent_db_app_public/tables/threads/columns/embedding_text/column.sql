-- Revert: schemas/agent_db_app_public/tables/threads/columns/embedding_text/column


ALTER TABLE agent_db_app_public.threads 
  DROP COLUMN embedding_text RESTRICT;


