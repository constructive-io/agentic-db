-- Verify: schemas/agent_db_invites_public/tables/org_invites/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_invites_public.org_invites', 'select', 'authenticated');


