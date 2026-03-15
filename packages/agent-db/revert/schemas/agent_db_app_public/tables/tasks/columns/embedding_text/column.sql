-- Revert: schemas/agent_db_app_public/tables/tasks/columns/embedding_text/column


ALTER TABLE agent_db_app_public.tasks 
  DROP COLUMN embedding_text RESTRICT;


