-- Revert: schemas/agentic_db_app_public/tables/session_archive_chunks/constraints/session_archive_chunks_session_archive_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".session_archive_chunks 
  DROP CONSTRAINT session_archive_chunks_session_archive_id_fkey;


