-- Verify: schemas/agent_db_invites_public/tables/org_claimed_invites/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_invites_public.org_claimed_invites', 'select', 'authenticated');


