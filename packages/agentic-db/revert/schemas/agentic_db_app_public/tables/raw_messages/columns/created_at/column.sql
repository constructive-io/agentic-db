-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/created_at/column


ALTER TABLE agentic_db_app_public.raw_messages 
  DROP COLUMN created_at RESTRICT;


