-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/app_memberships_sprt/columns/permissions/alterations/alt0000000081


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_sprt 
  ALTER COLUMN permissions DROP NOT NULL;


