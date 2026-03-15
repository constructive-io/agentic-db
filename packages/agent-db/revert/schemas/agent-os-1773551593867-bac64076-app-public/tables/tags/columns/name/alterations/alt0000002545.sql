-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/columns/name/alterations/alt0000002545


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tags 
  ALTER COLUMN name DROP NOT NULL;


