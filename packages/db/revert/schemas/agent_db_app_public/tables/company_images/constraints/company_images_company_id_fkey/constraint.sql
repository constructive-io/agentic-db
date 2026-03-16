-- Revert: schemas/agent_db_app_public/tables/company_images/constraints/company_images_company_id_fkey/constraint


ALTER TABLE "agent_db_app_public".company_images 
  DROP CONSTRAINT company_images_company_id_fkey;


