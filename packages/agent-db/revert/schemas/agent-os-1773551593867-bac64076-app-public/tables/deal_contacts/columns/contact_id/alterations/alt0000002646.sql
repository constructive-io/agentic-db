-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/deal_contacts/columns/contact_id/alterations/alt0000002646


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deal_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


