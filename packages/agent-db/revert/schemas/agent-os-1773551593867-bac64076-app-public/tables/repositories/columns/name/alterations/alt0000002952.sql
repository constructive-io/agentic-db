-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/columns/name/alterations/alt0000002952


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".repositories 
  ALTER COLUMN name DROP NOT NULL;


