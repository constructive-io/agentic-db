-- Deploy: schemas/agent_db_memberships_public/tables/app_owner_grants/columns/is_grant/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_owner_grants/table


ALTER TABLE agent_db_memberships_public.app_owner_grants 
  ADD COLUMN is_grant boolean;

