-- Revert: schemas/agentic_db_app_public/tables/session_archives/columns/id/alterations/alt0000002245


ALTER TABLE "agentic_db_app_public".session_archives 
  ALTER COLUMN id DROP NOT NULL;


