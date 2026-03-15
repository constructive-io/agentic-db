-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/columns/received_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".messages 
  DROP COLUMN received_at RESTRICT;


