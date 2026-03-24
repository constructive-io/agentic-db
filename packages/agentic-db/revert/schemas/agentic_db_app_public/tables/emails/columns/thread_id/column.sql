-- Revert: schemas/agentic_db_app_public/tables/emails/columns/thread_id/column


ALTER TABLE "agentic_db_app_public".emails 
  DROP COLUMN thread_id RESTRICT;


