-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/instagram_handle/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  DROP COLUMN instagram_handle RESTRICT;


