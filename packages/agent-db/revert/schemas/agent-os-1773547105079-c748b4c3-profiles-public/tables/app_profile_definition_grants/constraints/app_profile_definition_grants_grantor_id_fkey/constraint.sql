-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_definition_grants/constraints/app_profile_definition_grants_grantor_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_definition_grants 
  DROP CONSTRAINT app_profile_definition_grants_grantor_id_fkey;


