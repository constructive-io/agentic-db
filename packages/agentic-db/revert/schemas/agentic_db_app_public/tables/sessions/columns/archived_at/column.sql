-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/archived_at/column


ALTER TABLE agentic_db_app_public.sessions 
  DROP COLUMN archived_at RESTRICT;


