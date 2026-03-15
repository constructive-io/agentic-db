-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/columns/is_admin/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_members 
  DROP COLUMN is_admin RESTRICT;


