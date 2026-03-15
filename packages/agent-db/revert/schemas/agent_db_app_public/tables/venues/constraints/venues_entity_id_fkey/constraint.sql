-- Revert: schemas/agent_db_app_public/tables/venues/constraints/venues_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".venues 
  DROP CONSTRAINT venues_entity_id_fkey;


