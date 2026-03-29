-- Revert: schemas/agentic_db_app_public/tables/company_images/columns/company_id/alterations/alt0000010613


ALTER TABLE agentic_db_app_public.company_images 
  ALTER COLUMN company_id DROP NOT NULL;


