-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/events/columns/started_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".events 
  DROP COLUMN started_at RESTRICT;


