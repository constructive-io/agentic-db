-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/granted/alterations/alt0000000118
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/granted/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships 
    ALTER COLUMN granted SET DEFAULT lpad('', 24, '0')::bit(24);

