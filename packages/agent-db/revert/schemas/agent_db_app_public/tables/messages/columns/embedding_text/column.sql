-- Revert: schemas/agent_db_app_public/tables/messages/columns/embedding_text/column


ALTER TABLE agent_db_app_public.messages 
  DROP COLUMN embedding_text RESTRICT;


