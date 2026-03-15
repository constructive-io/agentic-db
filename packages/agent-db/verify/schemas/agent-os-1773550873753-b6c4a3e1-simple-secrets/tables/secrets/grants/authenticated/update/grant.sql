-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-simple-secrets.secrets', 'update', 'authenticated');


