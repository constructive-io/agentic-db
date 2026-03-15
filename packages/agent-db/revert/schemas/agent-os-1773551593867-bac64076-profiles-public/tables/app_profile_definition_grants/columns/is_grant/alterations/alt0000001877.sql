-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_definition_grants/columns/is_grant/alterations/alt0000001877


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_definition_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


