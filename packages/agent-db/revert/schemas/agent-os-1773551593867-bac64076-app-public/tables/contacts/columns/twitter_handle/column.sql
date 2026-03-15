-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/twitter_handle/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  DROP COLUMN twitter_handle RESTRICT;


