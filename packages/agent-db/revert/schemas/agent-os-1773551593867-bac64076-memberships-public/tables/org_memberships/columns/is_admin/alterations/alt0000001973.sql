-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/columns/is_admin/alterations/alt0000001973


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_memberships 
  ALTER COLUMN is_admin DROP NOT NULL;


