-- Revert: schemas/agent_db_app_public/tables/processes/columns/entity_id/column


ALTER TABLE "agent_db_app_public".processes 
  DROP COLUMN entity_id RESTRICT;


