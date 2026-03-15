-- Revert: schemas/agent_db_simple_secrets/tables/secrets/policies/enable_row_level_security


ALTER TABLE agent_db_simple_secrets.secrets 
  DISABLE ROW LEVEL SECURITY;


