-- Verify: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-users-public.users', 'update', 'authenticated');


