-- Deploy: schemas/agent_db_memberships_public/tables/org_members/columns/actor_id/alterations/alt0000000384
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/table
-- requires: schemas/agent_db_memberships_public/tables/org_members/columns/actor_id/column


ALTER TABLE agent_db_memberships_public.org_members 
  ALTER COLUMN actor_id SET NOT NULL;

