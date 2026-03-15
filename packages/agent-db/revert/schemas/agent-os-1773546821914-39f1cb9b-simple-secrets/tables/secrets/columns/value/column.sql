-- Revert: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/columns/value/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-simple-secrets".secrets 
  DROP COLUMN value RESTRICT;


