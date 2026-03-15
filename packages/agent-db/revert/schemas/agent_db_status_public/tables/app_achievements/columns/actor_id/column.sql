-- Revert: schemas/agent_db_status_public/tables/app_achievements/columns/actor_id/column


ALTER TABLE "agent_db_status_public".app_achievements 
  DROP COLUMN actor_id RESTRICT;


