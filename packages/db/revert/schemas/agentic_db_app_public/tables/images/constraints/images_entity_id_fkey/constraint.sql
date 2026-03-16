-- Revert: schemas/agentic_db_app_public/tables/images/constraints/images_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".images 
  DROP CONSTRAINT images_entity_id_fkey;


