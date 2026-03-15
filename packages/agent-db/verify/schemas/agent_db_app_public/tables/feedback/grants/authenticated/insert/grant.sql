-- Verify: schemas/agent_db_app_public/tables/feedback/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.feedback', 'insert', 'authenticated');


