-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/events/columns/city/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".events 
  DROP COLUMN city RESTRICT;


