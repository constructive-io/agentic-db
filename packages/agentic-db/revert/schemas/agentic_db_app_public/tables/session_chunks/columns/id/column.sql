-- Revert: schemas/agentic_db_app_public/tables/session_chunks/columns/id/column


ALTER TABLE agentic_db_app_public.session_chunks 
  DROP COLUMN id RESTRICT;


