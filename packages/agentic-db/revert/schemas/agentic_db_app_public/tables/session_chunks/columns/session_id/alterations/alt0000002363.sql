-- Revert: schemas/agentic_db_app_public/tables/session_chunks/columns/session_id/alterations/alt0000002363


ALTER TABLE "agentic_db_app_public".session_chunks 
  ALTER COLUMN session_id DROP NOT NULL;


