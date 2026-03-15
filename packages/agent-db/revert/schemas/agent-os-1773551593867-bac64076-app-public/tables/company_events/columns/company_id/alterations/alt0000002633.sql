-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_events/columns/company_id/alterations/alt0000002633


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_events 
  ALTER COLUMN company_id DROP NOT NULL;


