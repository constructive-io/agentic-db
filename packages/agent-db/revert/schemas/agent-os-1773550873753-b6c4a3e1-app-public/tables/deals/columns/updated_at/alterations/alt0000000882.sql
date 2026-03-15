-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deals/columns/updated_at/alterations/alt0000000882


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".deals 
  ALTER COLUMN updated_at DROP NOT NULL;


