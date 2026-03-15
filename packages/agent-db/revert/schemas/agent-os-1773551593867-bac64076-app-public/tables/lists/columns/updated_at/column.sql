-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".lists 
  DROP COLUMN updated_at RESTRICT;


