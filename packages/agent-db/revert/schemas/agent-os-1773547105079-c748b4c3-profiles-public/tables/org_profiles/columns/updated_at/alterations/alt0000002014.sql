-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/updated_at/alterations/alt0000002014


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profiles 
  ALTER COLUMN updated_at DROP DEFAULT;


