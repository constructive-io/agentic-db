-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_active/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table


ALTER TABLE agent_db_memberships_public.org_memberships 
  ADD COLUMN is_active boolean;

