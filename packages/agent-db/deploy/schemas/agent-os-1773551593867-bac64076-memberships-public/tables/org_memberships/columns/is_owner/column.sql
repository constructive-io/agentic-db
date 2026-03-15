-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/is_owner/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_memberships 
  ADD COLUMN is_owner boolean;

