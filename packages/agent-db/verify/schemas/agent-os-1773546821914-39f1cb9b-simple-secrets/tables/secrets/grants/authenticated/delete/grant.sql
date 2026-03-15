-- Verify: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-simple-secrets.secrets', 'delete', 'authenticated');


