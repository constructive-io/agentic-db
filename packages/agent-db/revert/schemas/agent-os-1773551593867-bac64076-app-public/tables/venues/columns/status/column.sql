-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/status/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venues 
  DROP COLUMN status RESTRICT;


