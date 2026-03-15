-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/columns/permissions/alterations/alt0000002030
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/columns/permissions/column



ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_grants 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

