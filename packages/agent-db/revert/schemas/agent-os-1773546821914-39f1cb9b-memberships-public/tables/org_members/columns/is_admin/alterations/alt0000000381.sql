-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/columns/is_admin/alterations/alt0000000381


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_members 
  ALTER COLUMN is_admin DROP NOT NULL;


