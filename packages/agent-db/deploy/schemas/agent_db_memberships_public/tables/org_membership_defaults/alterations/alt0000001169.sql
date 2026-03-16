-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/alterations/alt0000001169
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table


ALTER TABLE "agent_db_memberships_public".org_membership_defaults 
  DISABLE ROW LEVEL SECURITY;

