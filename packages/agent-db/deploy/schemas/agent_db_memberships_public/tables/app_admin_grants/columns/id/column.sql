-- Deploy: schemas/agent_db_memberships_public/tables/app_admin_grants/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_admin_grants/table


ALTER TABLE "agent_db_memberships_public".app_admin_grants 
  ADD COLUMN id uuid;

