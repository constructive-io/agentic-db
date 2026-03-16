-- Verify: schemas/agentic_db_invites_public/tables/invites/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_invites_public.invites', 'update', 'authenticated');


