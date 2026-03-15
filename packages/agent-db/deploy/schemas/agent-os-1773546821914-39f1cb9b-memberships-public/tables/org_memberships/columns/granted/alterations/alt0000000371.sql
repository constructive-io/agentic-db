-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/granted/alterations/alt0000000371
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/columns/granted/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships 
    ALTER COLUMN granted SET DEFAULT lpad('', 24, '0')::bit(24);

