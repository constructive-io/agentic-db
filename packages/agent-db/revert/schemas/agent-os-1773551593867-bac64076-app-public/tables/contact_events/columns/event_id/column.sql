-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_events/columns/event_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_events 
  DROP COLUMN event_id RESTRICT;


