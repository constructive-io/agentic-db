-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/columns/name/alterations/alt0000000599


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-simple-secrets".secrets 
  ALTER COLUMN name DROP NOT NULL;


