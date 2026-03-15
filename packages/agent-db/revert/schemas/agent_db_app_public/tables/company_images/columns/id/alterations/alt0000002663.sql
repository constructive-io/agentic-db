-- Revert: schemas/agent_db_app_public/tables/company_images/columns/id/alterations/alt0000002663


ALTER TABLE "agent_db_app_public".company_images 
  ALTER COLUMN id DROP NOT NULL;


