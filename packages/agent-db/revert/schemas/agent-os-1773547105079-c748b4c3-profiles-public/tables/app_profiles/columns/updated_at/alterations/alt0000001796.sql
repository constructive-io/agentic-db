-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/columns/updated_at/alterations/alt0000001796


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profiles 
  ALTER COLUMN updated_at DROP DEFAULT;


