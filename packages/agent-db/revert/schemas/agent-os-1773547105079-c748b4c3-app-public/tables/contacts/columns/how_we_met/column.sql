-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/columns/how_we_met/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contacts 
  DROP COLUMN how_we_met RESTRICT;


