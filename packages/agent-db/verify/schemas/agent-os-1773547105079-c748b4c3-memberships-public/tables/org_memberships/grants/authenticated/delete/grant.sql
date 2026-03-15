-- Verify: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-memberships-public.org_memberships', 'delete', 'authenticated');


