-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/permissions/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table


ALTER TABLE "agent_db_memberships_public".app_memberships 
  ADD COLUMN permissions bit(24);

