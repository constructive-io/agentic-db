-- Revert: schemas/agent_db_app_public/tables/contact_images/columns/contact_id/alterations/alt0000004202


ALTER TABLE "agent_db_app_public".contact_images 
  ALTER COLUMN contact_id DROP NOT NULL;


