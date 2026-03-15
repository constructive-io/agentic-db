-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/columns/entity_id/alterations/alt0000000968


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_links 
  ALTER COLUMN entity_id DROP NOT NULL;


