-- Revert: schemas/agentic_db_app_public/tables/session_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.session_chunks 
  DROP COLUMN created_at RESTRICT;


