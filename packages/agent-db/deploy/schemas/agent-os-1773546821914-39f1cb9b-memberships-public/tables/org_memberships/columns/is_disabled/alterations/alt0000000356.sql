-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/is_disabled/alterations/alt0000000356
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/is_disabled/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships 
    ALTER COLUMN is_disabled SET DEFAULT false;

