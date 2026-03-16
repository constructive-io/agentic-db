-- Verify: schemas/agent_db_app_public/tables/session_archives/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.session_archives', 'insert', 'authenticated');


