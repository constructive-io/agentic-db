-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/columns/created_at/alterations/alt0000002066


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_steps 
  ALTER COLUMN created_at DROP DEFAULT;


