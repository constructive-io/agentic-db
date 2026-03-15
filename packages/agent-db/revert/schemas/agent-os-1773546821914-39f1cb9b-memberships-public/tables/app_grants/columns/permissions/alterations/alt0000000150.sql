-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_grants/columns/permissions/alterations/alt0000000150


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_grants 
  ALTER COLUMN permissions DROP NOT NULL;


