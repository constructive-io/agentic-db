-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/name/alterations/alt0000002990


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".integrations 
  ALTER COLUMN name DROP NOT NULL;


