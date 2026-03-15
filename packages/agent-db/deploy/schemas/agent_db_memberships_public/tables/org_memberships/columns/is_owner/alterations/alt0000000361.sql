-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_owner/alterations/alt0000000361
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_owner/column


ALTER TABLE agent_db_memberships_public.org_memberships 
  ALTER COLUMN is_owner SET NOT NULL;

