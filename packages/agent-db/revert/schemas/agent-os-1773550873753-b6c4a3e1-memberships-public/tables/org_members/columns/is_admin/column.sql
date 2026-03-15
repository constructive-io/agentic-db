-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_members/columns/is_admin/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_members 
  DROP COLUMN is_admin RESTRICT;


