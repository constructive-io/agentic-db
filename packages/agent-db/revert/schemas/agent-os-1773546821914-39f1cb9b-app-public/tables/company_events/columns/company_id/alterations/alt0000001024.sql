-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/columns/company_id/alterations/alt0000001024


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_events 
  ALTER COLUMN company_id DROP NOT NULL;


