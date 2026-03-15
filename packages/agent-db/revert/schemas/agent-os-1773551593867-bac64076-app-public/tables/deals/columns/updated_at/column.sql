-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deals 
  DROP COLUMN updated_at RESTRICT;


