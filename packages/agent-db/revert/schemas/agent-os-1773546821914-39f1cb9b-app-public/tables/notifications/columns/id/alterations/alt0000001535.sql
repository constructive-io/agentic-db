-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/columns/id/alterations/alt0000001535


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notifications 
  ALTER COLUMN id DROP NOT NULL;


