-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/first_name/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  DROP COLUMN first_name RESTRICT;


