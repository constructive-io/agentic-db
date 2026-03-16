-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/columns/permissions/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/table


ALTER TABLE "agent_db_memberships_public".org_grants 
  ADD COLUMN permissions bit(24);

