-- Revert: schemas/agentic_db_app_public/tables/company_chunks/columns/company_id/alterations/alt0000005809


ALTER TABLE agentic_db_app_public.company_chunks 
  ALTER COLUMN company_id DROP NOT NULL;


