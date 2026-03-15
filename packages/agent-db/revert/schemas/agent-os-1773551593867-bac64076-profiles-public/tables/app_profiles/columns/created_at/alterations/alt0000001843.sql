-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/columns/created_at/alterations/alt0000001843


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profiles 
  ALTER COLUMN created_at DROP DEFAULT;


