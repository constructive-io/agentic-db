-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/created_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".integrations 
  DROP COLUMN created_at RESTRICT;


