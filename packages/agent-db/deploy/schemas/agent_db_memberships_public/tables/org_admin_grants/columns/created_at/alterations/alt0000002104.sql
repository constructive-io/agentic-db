-- Deploy: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/created_at/alterations/alt0000002104
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/created_at/column


ALTER TABLE "agent_db_memberships_public".org_admin_grants 
  ALTER COLUMN created_at SET DEFAULT now();

