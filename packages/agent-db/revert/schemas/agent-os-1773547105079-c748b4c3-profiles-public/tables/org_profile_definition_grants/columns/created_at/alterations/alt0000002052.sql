-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_definition_grants/columns/created_at/alterations/alt0000002052


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_definition_grants 
  ALTER COLUMN created_at DROP DEFAULT;


