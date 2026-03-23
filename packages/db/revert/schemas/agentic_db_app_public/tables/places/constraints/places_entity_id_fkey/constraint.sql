-- Revert: schemas/agentic_db_app_public/tables/places/constraints/places_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".places 
  DROP CONSTRAINT places_entity_id_fkey;


