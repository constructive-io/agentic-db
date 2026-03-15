-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/name/alterations/alt0000001222


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tools 
  ALTER COLUMN name DROP NOT NULL;


