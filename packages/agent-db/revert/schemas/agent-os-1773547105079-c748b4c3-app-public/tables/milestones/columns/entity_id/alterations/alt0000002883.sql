-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/columns/entity_id/alterations/alt0000002883


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".milestones 
  ALTER COLUMN entity_id DROP NOT NULL;


