-- Revert: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/columns/entity_id/alterations/alt0000001864


ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".org_limits 
  ALTER COLUMN entity_id DROP NOT NULL;


