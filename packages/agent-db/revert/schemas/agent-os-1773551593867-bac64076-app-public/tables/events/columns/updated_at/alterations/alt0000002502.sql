-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/events/columns/updated_at/alterations/alt0000002502


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".events 
  ALTER COLUMN updated_at DROP NOT NULL;


