-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/triage_notes/column


ALTER TABLE agentic_db_app_public.raw_messages 
  DROP COLUMN triage_notes RESTRICT;


