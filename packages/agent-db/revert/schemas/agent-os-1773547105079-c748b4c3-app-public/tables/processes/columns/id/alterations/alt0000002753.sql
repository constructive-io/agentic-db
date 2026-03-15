-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/id/alterations/alt0000002753


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".processes 
  ALTER COLUMN id DROP NOT NULL;


