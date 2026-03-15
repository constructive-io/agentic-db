-- Deploy: schemas/agent_db_memberships_public/tables/org_members/columns/is_admin/alterations/alt0000000381
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/table
-- requires: schemas/agent_db_memberships_public/tables/org_members/columns/is_admin/column


ALTER TABLE agent_db_memberships_public.org_members 
  ALTER COLUMN is_admin SET NOT NULL;

