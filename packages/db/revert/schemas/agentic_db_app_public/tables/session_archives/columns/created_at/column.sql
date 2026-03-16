-- Revert: schemas/agentic_db_app_public/tables/session_archives/columns/created_at/column


ALTER TABLE "agentic_db_app_public".session_archives 
  DROP COLUMN created_at RESTRICT;


