-- Revert: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/id/alterations/alt0000004321


ALTER TABLE agentic_db_app_public.session_archive_chunks 
  ALTER COLUMN id DROP NOT NULL;


