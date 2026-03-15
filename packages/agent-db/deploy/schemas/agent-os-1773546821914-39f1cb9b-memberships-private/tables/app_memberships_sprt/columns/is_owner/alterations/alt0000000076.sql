-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/app_memberships_sprt/columns/is_owner/alterations/alt0000000076
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/app_memberships_sprt/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/app_memberships_sprt/columns/is_owner/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_sprt 
    ALTER COLUMN is_owner SET DEFAULT false;

