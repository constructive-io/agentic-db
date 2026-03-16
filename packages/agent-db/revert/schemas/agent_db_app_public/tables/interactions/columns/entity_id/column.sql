-- Revert: schemas/agent_db_app_public/tables/interactions/columns/entity_id/column


ALTER TABLE "agent_db_app_public".interactions 
  DROP COLUMN entity_id RESTRICT;


