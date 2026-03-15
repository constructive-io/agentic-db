-- Verify: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-simple-secrets.secrets', 'insert', 'authenticated');


