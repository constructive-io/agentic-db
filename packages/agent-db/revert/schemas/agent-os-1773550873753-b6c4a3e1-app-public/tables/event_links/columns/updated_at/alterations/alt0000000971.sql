-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_links/columns/updated_at/alterations/alt0000000971


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_links 
  ALTER COLUMN updated_at DROP NOT NULL;


