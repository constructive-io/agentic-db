-- Deploy: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/actor_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/table


ALTER TABLE "agent_db_memberships_public".org_admin_grants 
  ADD COLUMN actor_id uuid;

