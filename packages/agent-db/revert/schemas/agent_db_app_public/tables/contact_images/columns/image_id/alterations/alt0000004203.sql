-- Revert: schemas/agent_db_app_public/tables/contact_images/columns/image_id/alterations/alt0000004203


ALTER TABLE "agent_db_app_public".contact_images 
  ALTER COLUMN image_id DROP NOT NULL;


