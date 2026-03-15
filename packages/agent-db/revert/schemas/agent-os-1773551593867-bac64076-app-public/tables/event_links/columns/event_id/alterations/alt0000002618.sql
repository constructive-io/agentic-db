-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_links/columns/event_id/alterations/alt0000002618


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_links 
  ALTER COLUMN event_id DROP NOT NULL;


