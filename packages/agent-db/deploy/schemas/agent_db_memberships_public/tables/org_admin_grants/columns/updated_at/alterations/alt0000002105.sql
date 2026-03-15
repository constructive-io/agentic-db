-- Deploy: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/updated_at/alterations/alt0000002105
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/updated_at/column


ALTER TABLE "agent_db_memberships_public".org_admin_grants 
  ALTER COLUMN updated_at SET DEFAULT now();

