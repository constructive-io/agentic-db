-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_grants/columns/membership_id/alterations/alt0000001859


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_grants 
  ALTER COLUMN membership_id DROP NOT NULL;


