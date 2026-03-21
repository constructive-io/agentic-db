-- Revert: schemas/agentic_db_app_public/tables/session_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".session_chunks 
  DROP COLUMN updated_at RESTRICT;


