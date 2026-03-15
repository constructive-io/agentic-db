-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/constraints/company_events_company_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_events 
  DROP CONSTRAINT company_events_company_id_fkey;


