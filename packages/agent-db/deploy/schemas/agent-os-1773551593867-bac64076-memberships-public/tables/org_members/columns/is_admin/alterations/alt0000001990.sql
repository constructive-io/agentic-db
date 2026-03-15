-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/columns/is_admin/alterations/alt0000001990
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/columns/is_admin/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_members 
  ALTER COLUMN is_admin SET NOT NULL;

