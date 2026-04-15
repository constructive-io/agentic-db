-- Verify: schemas/agentic_db_invites_public/tables/app_invites/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_invites_public.app_invites', 'update', 'authenticated');


