-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/archived_messages/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".sessions 
  DROP COLUMN archived_messages RESTRICT;


