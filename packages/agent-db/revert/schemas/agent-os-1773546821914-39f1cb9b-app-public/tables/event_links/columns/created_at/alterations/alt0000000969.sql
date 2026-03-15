-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_links/columns/created_at/alterations/alt0000000969


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_links 
  ALTER COLUMN created_at DROP NOT NULL;


