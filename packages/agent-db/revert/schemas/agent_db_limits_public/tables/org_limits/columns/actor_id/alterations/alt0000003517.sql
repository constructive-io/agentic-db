-- Revert: schemas/agent_db_limits_public/tables/org_limits/columns/actor_id/alterations/alt0000003517


ALTER TABLE "agent_db_limits_public".org_limits 
  ALTER COLUMN actor_id DROP NOT NULL;


