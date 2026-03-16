-- Revert: schemas/agentic_db_app_public/tables/contact_images/constraints/contact_images_pkey/constraint


ALTER TABLE "agentic_db_app_public".contact_images 
  DROP CONSTRAINT contact_images_pkey;


