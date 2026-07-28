-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/triage_score/column


ALTER TABLE agentic_db_app_public.raw_messages 
  DROP COLUMN triage_score RESTRICT;


