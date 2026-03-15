-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/columns/is_system/alterations/alt0000001837


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profiles 
  ALTER COLUMN is_system DROP NOT NULL;


