-- Verify: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_grants/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-profiles-public.org_profile_grants', 'insert', 'authenticated');


