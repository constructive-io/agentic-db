-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/columns/id/alterations/alt0000000595
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table
-- requires: schemas/agent_db_simple_secrets/tables/secrets/columns/id/column



ALTER TABLE agent_db_simple_secrets.secrets 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

