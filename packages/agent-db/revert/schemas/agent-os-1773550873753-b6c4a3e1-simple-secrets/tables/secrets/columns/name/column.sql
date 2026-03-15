-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/columns/name/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-simple-secrets".secrets 
  DROP COLUMN name RESTRICT;


