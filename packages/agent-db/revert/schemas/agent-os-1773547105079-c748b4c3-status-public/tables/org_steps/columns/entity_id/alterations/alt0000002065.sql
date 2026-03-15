-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/columns/entity_id/alterations/alt0000002065


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_steps 
  ALTER COLUMN entity_id DROP NOT NULL;


