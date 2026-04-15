-- Revert: schemas/agentic_db_app_public/tables/company_images/columns/image_id/alterations/alt0000013120


ALTER TABLE agentic_db_app_public.company_images 
  ALTER COLUMN image_id DROP NOT NULL;


