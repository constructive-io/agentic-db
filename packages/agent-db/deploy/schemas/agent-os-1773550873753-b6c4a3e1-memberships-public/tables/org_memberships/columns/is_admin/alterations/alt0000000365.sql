-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/columns/is_admin/alterations/alt0000000365
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/columns/is_admin/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships 
    ALTER COLUMN is_admin SET DEFAULT false;

