-- Revert: schemas/agentic_db_app_public/tables/contact_images/columns/contact_id/alterations/alt0000001021


ALTER TABLE "agentic_db_app_public".contact_images 
  ALTER COLUMN contact_id DROP NOT NULL;


