-- Revert: schemas/agent_db_app_public/tables/blueprints/columns/entity_id/column


ALTER TABLE "agent_db_app_public".blueprints 
  DROP COLUMN entity_id RESTRICT;


