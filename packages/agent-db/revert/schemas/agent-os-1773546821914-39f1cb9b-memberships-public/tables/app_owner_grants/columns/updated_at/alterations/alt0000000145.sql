-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/columns/updated_at/alterations/alt0000000145


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_owner_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


