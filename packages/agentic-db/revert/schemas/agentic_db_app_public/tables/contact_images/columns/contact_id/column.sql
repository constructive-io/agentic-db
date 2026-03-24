-- Revert: schemas/agentic_db_app_public/tables/contact_images/columns/contact_id/column


ALTER TABLE "agentic_db_app_public".contact_images 
  DROP COLUMN contact_id RESTRICT;


