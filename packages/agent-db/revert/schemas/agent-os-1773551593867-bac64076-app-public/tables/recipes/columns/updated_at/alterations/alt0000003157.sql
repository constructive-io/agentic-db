-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/updated_at/alterations/alt0000003157


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".recipes 
  ALTER COLUMN updated_at DROP NOT NULL;


