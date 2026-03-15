-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/columns/permissions/alterations/alt0000000421
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/columns/permissions/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_grants 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

