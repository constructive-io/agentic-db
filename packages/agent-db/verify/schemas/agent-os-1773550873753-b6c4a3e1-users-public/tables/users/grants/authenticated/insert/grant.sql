-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-users-public.users', 'insert', 'authenticated');


