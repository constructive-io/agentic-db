-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/columns/first_name/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contacts 
  DROP COLUMN first_name RESTRICT;


