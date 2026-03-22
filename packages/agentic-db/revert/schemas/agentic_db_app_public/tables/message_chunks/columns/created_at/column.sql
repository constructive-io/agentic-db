-- Revert: schemas/agentic_db_app_public/tables/message_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.message_chunks 
  DROP COLUMN created_at RESTRICT;


