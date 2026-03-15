-- Verify: schemas/agent_db_invites_public/tables/invites/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_invites_public.invites', 'delete', 'authenticated');


