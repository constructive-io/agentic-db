-- Deploy: schemas/agent_db_memberships_public/tables/org_members/columns/actor_id/alterations/alt0000001236
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/table
-- requires: schemas/agent_db_memberships_public/tables/org_members/columns/actor_id/column


ALTER TABLE "agent_db_memberships_public".org_members 
  ALTER COLUMN actor_id SET NOT NULL;

