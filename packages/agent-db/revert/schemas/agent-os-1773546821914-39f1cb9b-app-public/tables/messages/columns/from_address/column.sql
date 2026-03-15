-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/columns/from_address/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".messages 
  DROP COLUMN from_address RESTRICT;


