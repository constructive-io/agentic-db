-- Revert: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/content/alterations/alt0000002343


ALTER TABLE "agentic_db_app_public".session_archive_chunks 
  ALTER COLUMN content DROP NOT NULL;


