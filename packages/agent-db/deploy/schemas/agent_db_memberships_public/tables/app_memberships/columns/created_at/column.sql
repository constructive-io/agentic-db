-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table


ALTER TABLE "agent_db_memberships_public".app_memberships 
  ADD COLUMN created_at timestamptz;

