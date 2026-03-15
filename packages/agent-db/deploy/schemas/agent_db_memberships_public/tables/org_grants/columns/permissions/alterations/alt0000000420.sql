-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/columns/permissions/alterations/alt0000000420
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_grants/columns/permissions/column


ALTER TABLE agent_db_memberships_public.org_grants 
  ALTER COLUMN permissions SET NOT NULL;

