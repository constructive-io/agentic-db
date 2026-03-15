-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_events/columns/event_id/alterations/alt0000002634


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_events 
  ALTER COLUMN event_id DROP NOT NULL;


