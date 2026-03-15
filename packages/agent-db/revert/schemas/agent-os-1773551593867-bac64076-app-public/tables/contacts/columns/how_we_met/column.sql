-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/how_we_met/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  DROP COLUMN how_we_met RESTRICT;


