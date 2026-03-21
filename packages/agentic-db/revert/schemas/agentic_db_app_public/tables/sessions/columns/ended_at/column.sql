-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/ended_at/column


ALTER TABLE agentic_db_app_public.sessions 
  DROP COLUMN ended_at RESTRICT;


