-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/is_disabled/alterations/alt0000001964
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/is_disabled/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_memberships 
  ALTER COLUMN is_disabled SET NOT NULL;

