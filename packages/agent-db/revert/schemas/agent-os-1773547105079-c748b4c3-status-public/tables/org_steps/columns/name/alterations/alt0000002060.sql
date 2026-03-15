-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/columns/name/alterations/alt0000002060


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_steps 
  ALTER COLUMN name DROP NOT NULL;


