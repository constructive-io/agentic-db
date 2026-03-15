-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/columns/created_at/alterations/alt0000001795


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profiles 
  ALTER COLUMN created_at DROP DEFAULT;


