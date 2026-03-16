-- Revert: schemas/agent_db_app_public/tables/contact_images/columns/id/alterations/alt0000001829


ALTER TABLE "agent_db_app_public".contact_images 
  ALTER COLUMN id DROP NOT NULL;


