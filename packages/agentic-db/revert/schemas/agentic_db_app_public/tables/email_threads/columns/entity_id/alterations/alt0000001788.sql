-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/entity_id/alterations/alt0000001788


ALTER TABLE "agentic_db_app_public".email_threads 
  ALTER COLUMN entity_id DROP NOT NULL;


