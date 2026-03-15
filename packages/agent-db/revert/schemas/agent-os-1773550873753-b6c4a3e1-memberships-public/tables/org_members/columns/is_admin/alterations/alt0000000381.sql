-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_members/columns/is_admin/alterations/alt0000000381


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_members 
  ALTER COLUMN is_admin DROP NOT NULL;


