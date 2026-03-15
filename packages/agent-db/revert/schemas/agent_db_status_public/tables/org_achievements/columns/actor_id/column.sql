-- Revert: schemas/agent_db_status_public/tables/org_achievements/columns/actor_id/column


ALTER TABLE "agent_db_status_public".org_achievements 
  DROP COLUMN actor_id RESTRICT;


