-- Verify: schemas/agent_db_invites_public/tables/claimed_invites/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_invites_public.claimed_invites', 'select', 'authenticated');


