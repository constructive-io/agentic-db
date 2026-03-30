-- Revert: schemas/agentic_db_app_public/tables/companies/columns/main_image_id/column


ALTER TABLE "agentic_db_app_public".companies 
  DROP COLUMN main_image_id RESTRICT;


