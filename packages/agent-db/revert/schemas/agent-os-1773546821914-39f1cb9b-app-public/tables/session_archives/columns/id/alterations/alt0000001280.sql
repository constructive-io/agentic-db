-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/columns/id/alterations/alt0000001280


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".session_archives 
  ALTER COLUMN id DROP NOT NULL;


