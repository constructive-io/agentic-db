-- Revert: schemas/agentic_db_app_public/tables/trips/constraints/trips_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".trips 
  DROP CONSTRAINT trips_entity_id_fkey;


