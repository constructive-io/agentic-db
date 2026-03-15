-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_definition_grants/columns/updated_at/alterations/alt0000001833


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_definition_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


