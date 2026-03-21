-- Revert: schemas/agentic_db_app_public/tables/messages/columns/embedding/column


ALTER TABLE agentic_db_app_public.messages 
  DROP COLUMN embedding RESTRICT;


