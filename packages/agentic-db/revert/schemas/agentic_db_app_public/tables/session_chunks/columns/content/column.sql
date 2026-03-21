-- Revert: schemas/agentic_db_app_public/tables/session_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.session_chunks 
  DROP COLUMN content RESTRICT;


