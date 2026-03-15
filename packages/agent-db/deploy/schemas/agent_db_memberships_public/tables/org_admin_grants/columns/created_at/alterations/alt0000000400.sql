-- Deploy: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/created_at/alterations/alt0000000400
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/created_at/column


ALTER TABLE agent_db_memberships_public.org_admin_grants 
  ALTER COLUMN created_at SET DEFAULT now();

