-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/columns/entity_id/alterations/alt0000001028


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_events 
  ALTER COLUMN entity_id DROP NOT NULL;


