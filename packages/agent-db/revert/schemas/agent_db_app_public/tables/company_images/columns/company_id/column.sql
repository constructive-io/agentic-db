-- Revert: schemas/agent_db_app_public/tables/company_images/columns/company_id/column


ALTER TABLE "agent_db_app_public".company_images 
  DROP COLUMN company_id RESTRICT;


