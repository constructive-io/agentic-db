-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/columns/id/alterations/alt0000001192


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".processes 
  ALTER COLUMN id DROP NOT NULL;


