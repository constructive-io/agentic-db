-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/job_title/column


ALTER TABLE agentic_db_app_public.raw_contacts 
  DROP COLUMN job_title RESTRICT;


