-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/columns/updated_at/alterations/alt0000002797


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".blueprints 
  ALTER COLUMN updated_at DROP NOT NULL;


