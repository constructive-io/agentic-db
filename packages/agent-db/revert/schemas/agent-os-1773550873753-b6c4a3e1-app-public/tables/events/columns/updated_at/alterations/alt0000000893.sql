-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/columns/updated_at/alterations/alt0000000893


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".events 
  ALTER COLUMN updated_at DROP NOT NULL;


