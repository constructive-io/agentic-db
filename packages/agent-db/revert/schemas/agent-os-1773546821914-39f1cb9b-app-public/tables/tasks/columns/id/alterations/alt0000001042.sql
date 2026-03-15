-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/id/alterations/alt0000001042


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  ALTER COLUMN id DROP NOT NULL;


