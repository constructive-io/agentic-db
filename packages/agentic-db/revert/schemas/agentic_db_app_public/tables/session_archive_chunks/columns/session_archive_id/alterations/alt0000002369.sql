-- Revert: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/session_archive_id/alterations/alt0000002369


ALTER TABLE "agentic_db_app_public".session_archive_chunks 
  ALTER COLUMN session_archive_id DROP NOT NULL;


