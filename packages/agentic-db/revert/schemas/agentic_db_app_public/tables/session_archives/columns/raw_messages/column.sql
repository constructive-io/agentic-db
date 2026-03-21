-- Revert: schemas/agentic_db_app_public/tables/session_archives/columns/raw_messages/column


ALTER TABLE agentic_db_app_public.session_archives 
  DROP COLUMN raw_messages RESTRICT;


