-- Verify: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-invites-public.invites', 'delete', 'authenticated');


