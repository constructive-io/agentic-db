-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/columns/summary/alterations/alt0000001289


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".session_archives 
  ALTER COLUMN summary DROP NOT NULL;


