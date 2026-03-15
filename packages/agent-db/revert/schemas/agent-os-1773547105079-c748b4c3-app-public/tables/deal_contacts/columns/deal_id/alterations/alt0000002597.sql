-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deal_contacts/columns/deal_id/alterations/alt0000002597


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".deal_contacts 
  ALTER COLUMN deal_id DROP NOT NULL;


