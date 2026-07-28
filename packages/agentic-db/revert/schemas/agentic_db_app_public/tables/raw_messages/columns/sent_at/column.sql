-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/sent_at/column


ALTER TABLE agentic_db_app_public.raw_messages 
  DROP COLUMN sent_at RESTRICT;


