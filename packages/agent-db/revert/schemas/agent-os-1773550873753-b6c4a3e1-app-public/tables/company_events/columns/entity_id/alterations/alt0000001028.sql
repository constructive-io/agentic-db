-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_events/columns/entity_id/alterations/alt0000001028


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".company_events 
  ALTER COLUMN entity_id DROP NOT NULL;


