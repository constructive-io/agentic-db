-- Verify: schemas/agentic_db_app_public/tables/runtime_artifacts/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.runtime_artifacts', 'select', 'authenticated');


