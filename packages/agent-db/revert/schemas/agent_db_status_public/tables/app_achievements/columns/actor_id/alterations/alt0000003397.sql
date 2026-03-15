-- Revert: schemas/agent_db_status_public/tables/app_achievements/columns/actor_id/alterations/alt0000003397


ALTER TABLE "agent_db_status_public".app_achievements 
  ALTER COLUMN actor_id DROP NOT NULL;


