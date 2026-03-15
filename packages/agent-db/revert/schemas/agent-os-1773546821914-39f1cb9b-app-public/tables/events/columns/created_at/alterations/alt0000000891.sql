-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/columns/created_at/alterations/alt0000000891


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".events 
  ALTER COLUMN created_at DROP NOT NULL;


