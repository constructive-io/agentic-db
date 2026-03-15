-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/columns/id/alterations/alt0000001026


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_events 
  ALTER COLUMN id DROP NOT NULL;


