-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/columns/created_at/alterations/alt0000002795


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".blueprints 
  ALTER COLUMN created_at DROP NOT NULL;


