-- Revert: schemas/agent_db_limits_public/tables/app_limits/columns/actor_id/alterations/alt0000001754


ALTER TABLE "agent_db_limits_public".app_limits 
  ALTER COLUMN actor_id DROP NOT NULL;


