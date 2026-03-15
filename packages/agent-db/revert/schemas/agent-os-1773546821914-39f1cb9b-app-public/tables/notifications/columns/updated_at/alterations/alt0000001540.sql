-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/columns/updated_at/alterations/alt0000001540


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notifications 
  ALTER COLUMN updated_at DROP NOT NULL;


