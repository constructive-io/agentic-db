-- Verify: schemas/agent_db_app_public/tables/feedback/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.feedback', 'update', 'authenticated');


