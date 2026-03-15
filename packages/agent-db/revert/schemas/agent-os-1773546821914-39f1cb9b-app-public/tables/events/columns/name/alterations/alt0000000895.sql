-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/columns/name/alterations/alt0000000895


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".events 
  ALTER COLUMN name DROP NOT NULL;


