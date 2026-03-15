-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_admin_grants/columns/created_at/alterations/alt0000002009
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_admin_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_admin_grants/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_admin_grants 
  ALTER COLUMN created_at SET DEFAULT now();

