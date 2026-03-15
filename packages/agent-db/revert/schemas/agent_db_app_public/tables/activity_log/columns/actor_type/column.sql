-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/actor_type/column


ALTER TABLE "agent_db_app_public".activity_log 
  DROP COLUMN actor_type RESTRICT;


