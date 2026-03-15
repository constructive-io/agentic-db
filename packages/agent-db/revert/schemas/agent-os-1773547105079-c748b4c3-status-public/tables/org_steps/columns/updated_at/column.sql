-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/columns/updated_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_steps 
  DROP COLUMN updated_at RESTRICT;


