-- Verify: schemas/agent_db_simple_secrets/tables/secrets/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_simple_secrets.secrets', 'insert', 'authenticated');


