-- Revert: schemas/agentic_db_app_public/tables/contact_images/columns/id/alterations/alt0000005780


ALTER TABLE agentic_db_app_public.contact_images 
  ALTER COLUMN id DROP NOT NULL;


