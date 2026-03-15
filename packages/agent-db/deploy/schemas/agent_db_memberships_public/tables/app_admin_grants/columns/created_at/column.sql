-- Deploy: schemas/agent_db_memberships_public/tables/app_admin_grants/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_admin_grants/table


ALTER TABLE agent_db_memberships_public.app_admin_grants 
  ADD COLUMN created_at timestamptz;

