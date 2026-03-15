-- Verify: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-invites-public.invites', 'delete', 'authenticated');


