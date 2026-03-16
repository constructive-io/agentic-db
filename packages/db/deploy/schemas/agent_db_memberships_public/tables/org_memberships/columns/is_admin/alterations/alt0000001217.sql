-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_admin/alterations/alt0000001217
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_admin/column



ALTER TABLE "agent_db_memberships_public".org_memberships 
    ALTER COLUMN is_admin SET DEFAULT false;

