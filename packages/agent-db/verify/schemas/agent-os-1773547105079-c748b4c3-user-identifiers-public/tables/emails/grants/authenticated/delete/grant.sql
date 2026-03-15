-- Verify: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-user-identifiers-public.emails', 'delete', 'authenticated');


