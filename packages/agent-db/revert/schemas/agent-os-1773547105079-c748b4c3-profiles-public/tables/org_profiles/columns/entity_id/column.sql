-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profiles 
  DROP COLUMN entity_id RESTRICT;


