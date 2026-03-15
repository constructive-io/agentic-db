-- Deploy: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/table


ALTER TABLE agent_db_memberships_public.org_admin_grants 
  ADD COLUMN id uuid;

