-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table


ALTER TABLE agent_db_simple_secrets.secrets 
  ENABLE ROW LEVEL SECURITY;

