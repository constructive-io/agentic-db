-- Verify: schemas/agentic_db_simple_secrets/tables/secrets/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_simple_secrets.secrets', 'delete', 'authenticated');


