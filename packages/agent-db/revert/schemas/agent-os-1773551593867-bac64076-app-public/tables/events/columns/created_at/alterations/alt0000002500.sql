-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/events/columns/created_at/alterations/alt0000002500


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".events 
  ALTER COLUMN created_at DROP NOT NULL;


