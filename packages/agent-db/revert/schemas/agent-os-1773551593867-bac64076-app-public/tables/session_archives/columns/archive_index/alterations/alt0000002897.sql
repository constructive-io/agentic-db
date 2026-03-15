-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/archive_index/alterations/alt0000002897


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".session_archives 
  ALTER COLUMN archive_index DROP NOT NULL;


