-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/created_at/alterations/alt0000002013


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profiles 
  ALTER COLUMN created_at DROP DEFAULT;


