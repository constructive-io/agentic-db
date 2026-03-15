-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/session_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".session_archives 
  DROP COLUMN session_id RESTRICT;


