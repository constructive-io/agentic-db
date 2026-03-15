-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/columns/instagram_handle/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contacts 
  DROP COLUMN instagram_handle RESTRICT;


