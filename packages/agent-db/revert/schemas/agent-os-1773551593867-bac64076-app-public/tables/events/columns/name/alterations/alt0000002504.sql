-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/events/columns/name/alterations/alt0000002504


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".events 
  ALTER COLUMN name DROP NOT NULL;


