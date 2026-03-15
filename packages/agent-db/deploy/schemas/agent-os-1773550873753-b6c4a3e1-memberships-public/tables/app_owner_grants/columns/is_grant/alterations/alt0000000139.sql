-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_owner_grants/columns/is_grant/alterations/alt0000000139
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_owner_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_owner_grants/columns/is_grant/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_owner_grants 
    ALTER COLUMN is_grant SET DEFAULT true;

