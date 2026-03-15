-- Deploy: schemas/agent_db_memberships_public/tables/org_members/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/table


ALTER TABLE agent_db_memberships_public.org_members 
  ADD COLUMN id uuid;

