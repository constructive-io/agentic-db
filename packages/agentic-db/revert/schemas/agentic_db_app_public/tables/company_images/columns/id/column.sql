-- Revert: schemas/agentic_db_app_public/tables/company_images/columns/id/column


ALTER TABLE "agentic_db_app_public".company_images 
  DROP COLUMN id RESTRICT;


