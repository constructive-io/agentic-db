-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/columns/is_admin/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_members 
  DROP COLUMN is_admin RESTRICT;


