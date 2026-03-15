-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/columns/updated_at/alterations/alt0000002886


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".milestones 
  ALTER COLUMN updated_at DROP NOT NULL;


