-- Revert: schemas/agentic_db_app_public/tables/company_chunks/columns/content/alterations/alt0000003787


ALTER TABLE agentic_db_app_public.company_chunks 
  ALTER COLUMN content DROP NOT NULL;


