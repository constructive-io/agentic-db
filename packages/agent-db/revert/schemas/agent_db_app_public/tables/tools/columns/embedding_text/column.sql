-- Revert: schemas/agent_db_app_public/tables/tools/columns/embedding_text/column


ALTER TABLE agent_db_app_public.tools 
  DROP COLUMN embedding_text RESTRICT;


