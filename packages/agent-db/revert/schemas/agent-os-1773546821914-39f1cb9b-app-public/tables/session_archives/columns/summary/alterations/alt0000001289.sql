-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/columns/summary/alterations/alt0000001289


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".session_archives 
  ALTER COLUMN summary DROP NOT NULL;


