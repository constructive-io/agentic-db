-- Verify: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-memberships-public.org_memberships', 'delete', 'authenticated');


