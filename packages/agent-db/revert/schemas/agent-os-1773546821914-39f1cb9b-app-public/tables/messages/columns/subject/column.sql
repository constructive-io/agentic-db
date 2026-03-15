-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/columns/subject/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".messages 
  DROP COLUMN subject RESTRICT;


