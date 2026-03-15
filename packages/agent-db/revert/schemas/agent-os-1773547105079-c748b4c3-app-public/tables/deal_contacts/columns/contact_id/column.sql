-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deal_contacts/columns/contact_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".deal_contacts 
  DROP COLUMN contact_id RESTRICT;


