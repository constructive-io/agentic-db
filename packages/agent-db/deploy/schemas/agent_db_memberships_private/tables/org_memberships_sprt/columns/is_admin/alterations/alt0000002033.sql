-- Deploy: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/is_admin/alterations/alt0000002033
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/table
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/is_admin/column



ALTER TABLE "agent_db_memberships_private".org_memberships_sprt 
    ALTER COLUMN is_admin SET DEFAULT false;

