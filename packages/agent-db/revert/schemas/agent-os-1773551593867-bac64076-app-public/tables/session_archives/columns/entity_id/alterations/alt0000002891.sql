-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/entity_id/alterations/alt0000002891


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".session_archives 
  ALTER COLUMN entity_id DROP NOT NULL;


