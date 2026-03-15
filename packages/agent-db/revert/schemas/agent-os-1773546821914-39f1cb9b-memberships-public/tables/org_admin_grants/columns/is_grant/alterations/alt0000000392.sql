-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_admin_grants/columns/is_grant/alterations/alt0000000392


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_admin_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


