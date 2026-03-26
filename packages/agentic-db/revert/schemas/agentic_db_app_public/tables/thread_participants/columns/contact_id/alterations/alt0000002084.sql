-- Revert: schemas/agentic_db_app_public/tables/thread_participants/columns/contact_id/alterations/alt0000002084


ALTER TABLE "agentic_db_app_public".thread_participants 
  ALTER COLUMN contact_id DROP NOT NULL;


