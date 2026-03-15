-- Verify: schemas/agent_db_app_public/tables/feedback/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.feedback', 'delete', 'authenticated');


