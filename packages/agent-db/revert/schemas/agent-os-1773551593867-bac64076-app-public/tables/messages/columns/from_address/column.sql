-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/messages/columns/from_address/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".messages 
  DROP COLUMN from_address RESTRICT;


