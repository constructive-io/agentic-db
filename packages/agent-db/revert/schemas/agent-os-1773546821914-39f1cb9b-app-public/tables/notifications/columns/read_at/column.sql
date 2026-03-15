-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/columns/read_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notifications 
  DROP COLUMN read_at RESTRICT;


