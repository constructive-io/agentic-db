-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/columns/entity_id/alterations/alt0000002079


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_achievements 
  ALTER COLUMN entity_id DROP NOT NULL;


