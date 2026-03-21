-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".thread_chunks 
  DROP COLUMN created_at RESTRICT;


