-- Revert: schemas/agentic_db_app_public/tables/contact_images/columns/id/column


ALTER TABLE "agentic_db_app_public".contact_images 
  DROP COLUMN id RESTRICT;


