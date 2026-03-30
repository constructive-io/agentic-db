-- Revert: schemas/agentic_db_app_public/tables/contact_images/constraints/contact_images_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".contact_images 
  DROP CONSTRAINT contact_images_entity_id_fkey;


