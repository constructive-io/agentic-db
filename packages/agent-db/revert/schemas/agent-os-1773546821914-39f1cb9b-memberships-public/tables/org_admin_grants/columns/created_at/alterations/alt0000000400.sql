-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_admin_grants/columns/created_at/alterations/alt0000000400


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_admin_grants 
  ALTER COLUMN created_at DROP DEFAULT;


