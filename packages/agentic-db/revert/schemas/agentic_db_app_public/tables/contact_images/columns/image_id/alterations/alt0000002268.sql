-- Revert: schemas/agentic_db_app_public/tables/contact_images/columns/image_id/alterations/alt0000002268


ALTER TABLE agentic_db_app_public.contact_images 
  ALTER COLUMN image_id DROP NOT NULL;


