-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_links/columns/created_at/alterations/alt0000000969


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_links 
  ALTER COLUMN created_at DROP NOT NULL;


