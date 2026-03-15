-- Revert: schemas/agent_db_app_public/tables/templates/columns/embedding_text/column


ALTER TABLE agent_db_app_public.templates 
  DROP COLUMN embedding_text RESTRICT;


