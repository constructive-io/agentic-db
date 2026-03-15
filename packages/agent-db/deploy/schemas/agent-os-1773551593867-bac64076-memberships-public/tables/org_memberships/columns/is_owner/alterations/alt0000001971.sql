-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/is_owner/alterations/alt0000001971
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/is_owner/column



ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_memberships 
    ALTER COLUMN is_owner SET DEFAULT false;

