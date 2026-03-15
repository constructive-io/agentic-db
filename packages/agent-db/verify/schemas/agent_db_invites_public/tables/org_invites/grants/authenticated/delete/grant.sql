-- Verify: schemas/agent_db_invites_public/tables/org_invites/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_invites_public.org_invites', 'delete', 'authenticated');


