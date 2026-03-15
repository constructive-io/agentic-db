-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/columns/created_at/alterations/alt0000000132


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_admin_grants 
  ALTER COLUMN created_at DROP DEFAULT;


