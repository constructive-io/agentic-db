-- Verify: schemas/agent_db_app_public/tables/sessions/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.sessions', 'delete', 'authenticated');


