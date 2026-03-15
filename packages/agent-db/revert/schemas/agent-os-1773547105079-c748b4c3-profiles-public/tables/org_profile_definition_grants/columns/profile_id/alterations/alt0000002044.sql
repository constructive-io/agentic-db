-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_definition_grants/columns/profile_id/alterations/alt0000002044


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_definition_grants 
  ALTER COLUMN profile_id DROP NOT NULL;


