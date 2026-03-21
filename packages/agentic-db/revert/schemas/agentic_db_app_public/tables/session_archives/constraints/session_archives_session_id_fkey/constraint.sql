-- Revert: schemas/agentic_db_app_public/tables/session_archives/constraints/session_archives_session_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".session_archives 
  DROP CONSTRAINT session_archives_session_id_fkey;


