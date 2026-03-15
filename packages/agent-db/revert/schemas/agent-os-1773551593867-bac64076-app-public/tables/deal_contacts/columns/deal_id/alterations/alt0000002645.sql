-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/deal_contacts/columns/deal_id/alterations/alt0000002645


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deal_contacts 
  ALTER COLUMN deal_id DROP NOT NULL;


