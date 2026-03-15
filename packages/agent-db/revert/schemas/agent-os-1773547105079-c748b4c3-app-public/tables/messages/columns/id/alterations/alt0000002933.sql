-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/columns/id/alterations/alt0000002933


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".messages 
  ALTER COLUMN id DROP NOT NULL;


