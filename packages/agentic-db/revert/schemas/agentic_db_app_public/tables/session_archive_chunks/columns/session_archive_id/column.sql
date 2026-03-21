-- Revert: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/session_archive_id/column


ALTER TABLE "agentic_db_app_public".session_archive_chunks 
  DROP COLUMN session_archive_id RESTRICT;


