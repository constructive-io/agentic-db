-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/columns/updated_at/alterations/alt0000001844


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profiles 
  ALTER COLUMN updated_at DROP DEFAULT;


