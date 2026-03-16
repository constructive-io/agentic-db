-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/entity_id/column


ALTER TABLE "agent_db_app_public".activity_log 
  DROP COLUMN entity_id RESTRICT;


