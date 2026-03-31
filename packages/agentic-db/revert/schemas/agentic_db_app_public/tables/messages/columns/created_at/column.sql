-- Revert: schemas/agentic_db_app_public/tables/messages/columns/created_at/column


ALTER TABLE agentic_db_app_public.messages 
  DROP COLUMN created_at RESTRICT;


