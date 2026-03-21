-- Verify: schemas/agentic_db_app_public/tables/sessions/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.sessions', 'delete', 'authenticated');


