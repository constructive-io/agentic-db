-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_definition_grants/columns/created_at/alterations/alt0000001880


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_definition_grants 
  ALTER COLUMN created_at DROP DEFAULT;


