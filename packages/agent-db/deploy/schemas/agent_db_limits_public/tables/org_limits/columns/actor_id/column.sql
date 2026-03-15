-- Deploy: schemas/agent_db_limits_public/tables/org_limits/columns/actor_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limits/table


ALTER TABLE "agent_db_limits_public".org_limits 
  ADD COLUMN actor_id uuid;

