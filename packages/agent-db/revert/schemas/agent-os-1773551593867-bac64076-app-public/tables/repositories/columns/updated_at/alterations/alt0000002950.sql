-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/columns/updated_at/alterations/alt0000002950


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".repositories 
  ALTER COLUMN updated_at DROP NOT NULL;


