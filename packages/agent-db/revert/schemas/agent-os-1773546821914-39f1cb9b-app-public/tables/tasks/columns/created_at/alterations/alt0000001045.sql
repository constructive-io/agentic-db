-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/created_at/alterations/alt0000001045


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  ALTER COLUMN created_at DROP NOT NULL;


