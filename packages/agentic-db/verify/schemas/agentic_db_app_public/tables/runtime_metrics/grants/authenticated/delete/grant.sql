-- Verify: schemas/agentic_db_app_public/tables/runtime_metrics/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.runtime_metrics', 'delete', 'authenticated');


