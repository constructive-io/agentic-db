-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/alterations/alt0000000317
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table


ALTER TABLE agent_db_memberships_public.org_membership_defaults 
  DISABLE ROW LEVEL SECURITY;

