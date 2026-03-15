-- Verify: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-invites-public.org_invites', 'delete', 'authenticated');


