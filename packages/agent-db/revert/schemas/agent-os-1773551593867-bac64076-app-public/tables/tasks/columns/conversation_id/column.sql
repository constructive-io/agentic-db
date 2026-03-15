-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/conversation_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
  DROP COLUMN conversation_id RESTRICT;


