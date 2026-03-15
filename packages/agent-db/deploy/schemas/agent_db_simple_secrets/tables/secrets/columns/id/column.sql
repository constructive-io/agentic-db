-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table


ALTER TABLE agent_db_simple_secrets.secrets 
  ADD COLUMN id uuid;

