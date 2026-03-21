-- Revert: schemas/agentic_db_app_public/tables/session_archives/columns/session_id/alterations/alt0000002252


ALTER TABLE "agentic_db_app_public".session_archives 
  ALTER COLUMN session_id DROP NOT NULL;


