-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deal_contacts/columns/deal_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".deal_contacts 
  DROP COLUMN deal_id RESTRICT;


