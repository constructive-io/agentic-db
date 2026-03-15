-- Revert: schemas/agent_db_simple_secrets/tables/secrets/constraints/secrets_pkey/constraint


ALTER TABLE agent_db_simple_secrets.secrets 
  DROP CONSTRAINT secrets_pkey;


