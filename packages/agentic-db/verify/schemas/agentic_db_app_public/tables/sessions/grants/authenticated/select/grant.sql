-- Verify: schemas/agentic_db_app_public/tables/sessions/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.sessions', 'select', 'authenticated');


