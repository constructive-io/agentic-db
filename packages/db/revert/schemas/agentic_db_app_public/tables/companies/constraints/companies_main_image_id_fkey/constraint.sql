-- Revert: schemas/agentic_db_app_public/tables/companies/constraints/companies_main_image_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".companies 
  DROP CONSTRAINT companies_main_image_id_fkey;


