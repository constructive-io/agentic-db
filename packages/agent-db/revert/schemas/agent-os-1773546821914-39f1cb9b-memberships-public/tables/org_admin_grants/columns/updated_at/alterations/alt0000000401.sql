-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_admin_grants/columns/updated_at/alterations/alt0000000401


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_admin_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


