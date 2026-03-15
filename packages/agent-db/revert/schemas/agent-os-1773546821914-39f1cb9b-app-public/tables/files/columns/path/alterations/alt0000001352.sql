-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/columns/path/alterations/alt0000001352


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".files 
  ALTER COLUMN path DROP NOT NULL;


