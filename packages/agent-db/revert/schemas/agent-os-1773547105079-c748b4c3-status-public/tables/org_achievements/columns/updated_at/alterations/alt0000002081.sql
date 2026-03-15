-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/columns/updated_at/alterations/alt0000002081


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_achievements 
  ALTER COLUMN updated_at DROP DEFAULT;


