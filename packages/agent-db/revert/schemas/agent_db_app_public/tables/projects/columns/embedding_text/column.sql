-- Revert: schemas/agent_db_app_public/tables/projects/columns/embedding_text/column


ALTER TABLE agent_db_app_public.projects 
  DROP COLUMN embedding_text RESTRICT;


