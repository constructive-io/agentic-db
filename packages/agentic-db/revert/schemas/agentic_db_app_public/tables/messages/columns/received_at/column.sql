-- Revert: schemas/agentic_db_app_public/tables/messages/columns/received_at/column


ALTER TABLE agentic_db_app_public.messages 
  DROP COLUMN received_at RESTRICT;


