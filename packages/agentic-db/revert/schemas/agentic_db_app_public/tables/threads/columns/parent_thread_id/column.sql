-- Revert: schemas/agentic_db_app_public/tables/threads/columns/parent_thread_id/column


ALTER TABLE "agentic_db_app_public".threads 
  DROP COLUMN parent_thread_id RESTRICT;


