-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/columns/is_admin/alterations/alt0000001990


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_members 
  ALTER COLUMN is_admin DROP NOT NULL;


