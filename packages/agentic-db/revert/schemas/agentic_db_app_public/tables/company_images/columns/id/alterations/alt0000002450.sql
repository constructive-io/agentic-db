-- Revert: schemas/agentic_db_app_public/tables/company_images/columns/id/alterations/alt0000002450


ALTER TABLE agentic_db_app_public.company_images 
  ALTER COLUMN id DROP NOT NULL;


