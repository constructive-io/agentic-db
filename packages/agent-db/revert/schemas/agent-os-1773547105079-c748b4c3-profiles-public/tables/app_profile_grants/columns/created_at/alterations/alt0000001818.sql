-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_grants/columns/created_at/alterations/alt0000001818


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_grants 
  ALTER COLUMN created_at DROP DEFAULT;


