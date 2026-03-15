-- Revert: schemas/agent_db_simple_secrets/tables/secrets/columns/value/column


ALTER TABLE "agent_db_simple_secrets".secrets 
  DROP COLUMN value RESTRICT;


