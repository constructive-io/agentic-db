-- Revert: schemas/agent_db_app_public/tables/ideas/columns/embedding_text/column


ALTER TABLE agent_db_app_public.ideas 
  DROP COLUMN embedding_text RESTRICT;


