-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/entity_id/alterations/alt0000002470


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


