-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/files/columns/path/alterations/alt0000001352


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".files 
  ALTER COLUMN path DROP NOT NULL;


