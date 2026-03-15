-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/is_admin/alterations/alt0000001973
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/is_admin/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_memberships 
  ALTER COLUMN is_admin SET NOT NULL;

