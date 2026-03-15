-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/columns/event_id/alterations/alt0000001009


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_links 
  ALTER COLUMN event_id DROP NOT NULL;


