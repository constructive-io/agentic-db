-- Revert: schemas/agent_db_simple_secrets/tables/secrets/columns/id/column


ALTER TABLE agent_db_simple_secrets.secrets 
  DROP COLUMN id RESTRICT;


