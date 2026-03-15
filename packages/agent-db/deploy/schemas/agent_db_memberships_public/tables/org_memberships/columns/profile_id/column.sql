-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/profile_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table


ALTER TABLE "agent_db_memberships_public".org_memberships 
  ADD COLUMN profile_id uuid;

