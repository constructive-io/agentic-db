-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_grants/columns/is_grant/alterations/alt0000001863


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


