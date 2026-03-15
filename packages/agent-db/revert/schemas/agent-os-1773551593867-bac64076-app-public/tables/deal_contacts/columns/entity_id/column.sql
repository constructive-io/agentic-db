-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/deal_contacts/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deal_contacts 
  DROP COLUMN entity_id RESTRICT;


