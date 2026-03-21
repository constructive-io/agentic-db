-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/created_at/column


ALTER TABLE agentic_db_app_public.sessions 
  DROP COLUMN created_at RESTRICT;


