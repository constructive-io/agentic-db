-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/app_memberships_sprt/columns/is_owner/alterations/alt0000000075


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_sprt 
  ALTER COLUMN is_owner DROP NOT NULL;


