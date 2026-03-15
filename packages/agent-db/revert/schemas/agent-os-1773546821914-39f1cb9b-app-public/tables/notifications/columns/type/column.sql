-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/columns/type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notifications 
  DROP COLUMN type RESTRICT;


