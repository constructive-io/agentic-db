-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/location/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  DROP COLUMN location RESTRICT;


