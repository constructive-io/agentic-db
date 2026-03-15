-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_events/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_events 
  DROP COLUMN entity_id RESTRICT;


