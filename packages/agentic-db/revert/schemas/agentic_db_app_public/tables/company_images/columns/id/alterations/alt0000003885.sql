-- Revert: schemas/agentic_db_app_public/tables/company_images/columns/id/alterations/alt0000003885


ALTER TABLE agentic_db_app_public.company_images 
  ALTER COLUMN id DROP NOT NULL;


