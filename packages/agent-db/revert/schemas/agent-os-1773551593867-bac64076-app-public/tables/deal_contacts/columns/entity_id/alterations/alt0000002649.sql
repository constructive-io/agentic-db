-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/deal_contacts/columns/entity_id/alterations/alt0000002649


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deal_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


