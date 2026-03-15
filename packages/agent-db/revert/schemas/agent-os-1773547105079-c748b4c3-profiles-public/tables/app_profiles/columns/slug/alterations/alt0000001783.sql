-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/columns/slug/alterations/alt0000001783


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profiles 
  ALTER COLUMN slug DROP NOT NULL;


