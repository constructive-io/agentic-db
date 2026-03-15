-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table


ALTER TABLE agent_db_memberships_public.app_memberships 
  ADD COLUMN updated_at timestamptz;

