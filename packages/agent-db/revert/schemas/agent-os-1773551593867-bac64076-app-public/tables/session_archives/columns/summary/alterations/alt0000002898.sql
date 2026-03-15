-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/summary/alterations/alt0000002898


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".session_archives 
  ALTER COLUMN summary DROP NOT NULL;


