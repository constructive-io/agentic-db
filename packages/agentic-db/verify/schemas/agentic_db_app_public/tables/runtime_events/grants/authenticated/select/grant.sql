-- Verify: schemas/agentic_db_app_public/tables/runtime_events/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.runtime_events', 'select', 'authenticated');


