-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_venues/columns/event_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_venues 
  DROP COLUMN event_id RESTRICT;


