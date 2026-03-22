-- Revert: schemas/agentic_db_app_public/tables/company_chunks/columns/content/alterations/alt0000002148


ALTER TABLE agentic_db_app_public.company_chunks 
  ALTER COLUMN content DROP NOT NULL;


