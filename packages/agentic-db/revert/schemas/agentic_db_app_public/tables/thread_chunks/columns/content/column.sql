-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".thread_chunks 
  DROP COLUMN content RESTRICT;


