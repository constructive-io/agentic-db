-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venues 
  DROP COLUMN updated_at RESTRICT;


