-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_grants/columns/created_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_grants 
  DROP COLUMN created_at RESTRICT;


