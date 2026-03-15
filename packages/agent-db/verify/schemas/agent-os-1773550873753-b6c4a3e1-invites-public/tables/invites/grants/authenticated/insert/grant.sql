-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-invites-public.invites', 'insert', 'authenticated');


