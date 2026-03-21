-- Revert: schemas/agentic_db_app_public/tables/session_archives/columns/message_range_start/column


ALTER TABLE agentic_db_app_public.session_archives 
  DROP COLUMN message_range_start RESTRICT;


