-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/columns/is_grant/alterations/alt0000000138


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_owner_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


