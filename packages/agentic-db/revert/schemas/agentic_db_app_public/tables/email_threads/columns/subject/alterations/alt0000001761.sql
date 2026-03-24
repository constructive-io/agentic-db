-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/subject/alterations/alt0000001761


ALTER TABLE "agentic_db_app_public".email_threads 
  ALTER COLUMN subject DROP NOT NULL;


