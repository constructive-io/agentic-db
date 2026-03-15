-- Deploy: schemas/agent_db_memberships_public/tables/app_owner_grants/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_owner_grants/table


ALTER TABLE agent_db_memberships_public.app_owner_grants 
  ADD COLUMN id uuid;

