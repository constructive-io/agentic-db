-- Verify: schemas/agent_db_invites_public/tables/invites/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_invites_public.invites', 'select', 'authenticated');


