-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/permissions/alterations/alt0000001976
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/permissions/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_memberships 
  ALTER COLUMN permissions SET NOT NULL;

