-- Revert: schemas/agentic_db_app_public/tables/session_archives/columns/summary/alterations/alt0000004240


ALTER TABLE agentic_db_app_public.session_archives 
  ALTER COLUMN summary DROP NOT NULL;


