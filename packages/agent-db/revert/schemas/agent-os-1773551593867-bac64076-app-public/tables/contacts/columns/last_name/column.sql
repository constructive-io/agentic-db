-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/last_name/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  DROP COLUMN last_name RESTRICT;


