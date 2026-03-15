-- Verify: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_definition_grants/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-profiles-public.org_profile_definition_grants', 'insert', 'authenticated');


