-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/columns/is_active/alterations/alt0000000106
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/columns/is_active/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships 
    ALTER COLUMN is_active SET DEFAULT false;

