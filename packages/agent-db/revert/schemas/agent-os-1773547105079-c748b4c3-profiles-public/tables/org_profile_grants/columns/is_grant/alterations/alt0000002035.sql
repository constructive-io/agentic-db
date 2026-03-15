-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_grants/columns/is_grant/alterations/alt0000002035


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


