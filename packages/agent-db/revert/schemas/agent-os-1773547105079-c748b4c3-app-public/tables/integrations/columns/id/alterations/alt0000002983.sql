-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/id/alterations/alt0000002983


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".integrations 
  ALTER COLUMN id DROP NOT NULL;


