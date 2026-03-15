-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/messages/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".messages 
  DROP COLUMN id RESTRICT;


