-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_active/alterations/alt0000000358
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_active/column


ALTER TABLE agent_db_memberships_public.org_memberships 
  ALTER COLUMN is_active SET NOT NULL;

