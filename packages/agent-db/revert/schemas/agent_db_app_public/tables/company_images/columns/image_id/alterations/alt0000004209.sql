-- Revert: schemas/agent_db_app_public/tables/company_images/columns/image_id/alterations/alt0000004209


ALTER TABLE "agent_db_app_public".company_images 
  ALTER COLUMN image_id DROP NOT NULL;


