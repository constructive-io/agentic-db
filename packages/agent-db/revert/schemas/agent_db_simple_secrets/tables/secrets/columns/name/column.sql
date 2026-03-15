-- Revert: schemas/agent_db_simple_secrets/tables/secrets/columns/name/column


ALTER TABLE agent_db_simple_secrets.secrets 
  DROP COLUMN name RESTRICT;


