-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/alterations/alt0000000592
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table


ALTER TABLE agent_db_simple_secrets.secrets 
  DISABLE ROW LEVEL SECURITY;

