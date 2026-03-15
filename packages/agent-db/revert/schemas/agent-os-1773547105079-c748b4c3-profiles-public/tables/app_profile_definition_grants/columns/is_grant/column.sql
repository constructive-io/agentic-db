-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_definition_grants/columns/is_grant/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_definition_grants 
  DROP COLUMN is_grant RESTRICT;


