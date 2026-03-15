-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/columns/is_grant/alterations/alt0000000127
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/columns/is_grant/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_admin_grants 
    ALTER COLUMN is_grant SET DEFAULT true;

