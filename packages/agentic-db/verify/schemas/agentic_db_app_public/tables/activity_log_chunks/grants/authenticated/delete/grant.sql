-- Verify: schemas/agentic_db_app_public/tables/activity_log_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.activity_log_chunks', 'delete', 'authenticated');


