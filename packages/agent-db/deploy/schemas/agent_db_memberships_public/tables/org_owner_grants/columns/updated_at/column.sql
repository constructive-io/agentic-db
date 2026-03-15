-- Deploy: schemas/agent_db_memberships_public/tables/org_owner_grants/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_owner_grants/table


ALTER TABLE agent_db_memberships_public.org_owner_grants 
  ADD COLUMN updated_at timestamptz;

