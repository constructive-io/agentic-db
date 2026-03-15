-- Revert: schemas/agent_db_app_public/tables/repositories/columns/embedding_text/column


ALTER TABLE agent_db_app_public.repositories 
  DROP COLUMN embedding_text RESTRICT;


