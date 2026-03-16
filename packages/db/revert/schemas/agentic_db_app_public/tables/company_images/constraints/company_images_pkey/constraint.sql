-- Revert: schemas/agentic_db_app_public/tables/company_images/constraints/company_images_pkey/constraint


ALTER TABLE "agentic_db_app_public".company_images 
  DROP CONSTRAINT company_images_pkey;


