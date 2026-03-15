-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/permissions/alterations/alt0000000367
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/permissions/column


ALTER TABLE agent_db_memberships_public.org_memberships 
  ALTER COLUMN permissions SET NOT NULL;

