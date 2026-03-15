-- Verify: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-invites-public.invites', 'delete', 'authenticated');


