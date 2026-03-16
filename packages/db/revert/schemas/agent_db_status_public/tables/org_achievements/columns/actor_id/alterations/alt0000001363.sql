-- Revert: schemas/agent_db_status_public/tables/org_achievements/columns/actor_id/alterations/alt0000001363


ALTER TABLE "agent_db_status_public".org_achievements 
  ALTER COLUMN actor_id DROP NOT NULL;


