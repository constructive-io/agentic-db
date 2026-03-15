-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_definition_grants/constraints/org_profile_definition_grants_permission_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_definition_grants 
  DROP CONSTRAINT org_profile_definition_grants_permission_id_fkey;


