-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/columns/entity_id/alterations/alt0000002947


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".repositories 
  ALTER COLUMN entity_id DROP NOT NULL;


