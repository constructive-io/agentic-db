-- Verify: schemas/agentic_db_invites_public/tables/app_invites/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_invites_public.app_invites', 'select', 'authenticated');


