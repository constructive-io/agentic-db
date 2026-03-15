-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/provider/alterations/alt0000002991


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".integrations 
  ALTER COLUMN provider DROP NOT NULL;


