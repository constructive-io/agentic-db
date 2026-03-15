-- Revert: schemas/agent_db_simple_secrets/tables/secrets/columns/owner_id/column


ALTER TABLE agent_db_simple_secrets.secrets 
  DROP COLUMN owner_id RESTRICT;


