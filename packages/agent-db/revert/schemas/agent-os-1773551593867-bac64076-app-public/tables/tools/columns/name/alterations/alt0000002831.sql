-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/name/alterations/alt0000002831


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tools 
  ALTER COLUMN name DROP NOT NULL;


