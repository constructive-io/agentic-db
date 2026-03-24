-- Revert: schemas/agentic_db_app_public/tables/emails/columns/thread_id/alterations/alt0000001785


ALTER TABLE "agentic_db_app_public".emails 
  ALTER COLUMN thread_id DROP NOT NULL;


