-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_grants/columns/membership_id/alterations/alt0000001811


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_grants 
  ALTER COLUMN membership_id DROP NOT NULL;


