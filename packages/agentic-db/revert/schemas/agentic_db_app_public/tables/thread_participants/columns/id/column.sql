-- Revert: schemas/agentic_db_app_public/tables/thread_participants/columns/id/column


ALTER TABLE "agentic_db_app_public".thread_participants 
  DROP COLUMN id RESTRICT;


