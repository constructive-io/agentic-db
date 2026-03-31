-- Revert: schemas/agentic_db_app_public/tables/company_images/columns/entity_id/alterations/alt0000003273


ALTER TABLE agentic_db_app_public.company_images 
  ALTER COLUMN entity_id DROP NOT NULL;


