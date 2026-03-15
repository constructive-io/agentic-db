-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_level_requirements/columns/level/alterations/alt0000002099


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_level_requirements 
  ALTER COLUMN level DROP NOT NULL;


