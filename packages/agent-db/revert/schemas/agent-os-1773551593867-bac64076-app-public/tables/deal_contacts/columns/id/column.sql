-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/deal_contacts/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deal_contacts 
  DROP COLUMN id RESTRICT;


