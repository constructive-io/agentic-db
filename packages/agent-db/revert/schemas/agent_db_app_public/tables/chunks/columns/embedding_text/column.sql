-- Revert: schemas/agent_db_app_public/tables/chunks/columns/embedding_text/column


ALTER TABLE agent_db_app_public.chunks 
  DROP COLUMN embedding_text RESTRICT;


