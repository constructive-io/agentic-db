-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_definition_grants/columns/permission_id/alterations/alt0000001826


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_definition_grants 
  ALTER COLUMN permission_id DROP NOT NULL;


