-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_events/columns/contact_id/alterations/alt0000001018


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_events 
  ALTER COLUMN contact_id DROP NOT NULL;


