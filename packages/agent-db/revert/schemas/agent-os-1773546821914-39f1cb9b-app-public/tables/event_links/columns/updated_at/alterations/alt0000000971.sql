-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/columns/updated_at/alterations/alt0000000971


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_links 
  ALTER COLUMN updated_at DROP NOT NULL;


