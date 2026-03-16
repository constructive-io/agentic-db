-- Revert: schemas/agent_db_app_public/tables/blueprints/constraints/blueprints_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".blueprints 
  DROP CONSTRAINT blueprints_entity_id_fkey;


