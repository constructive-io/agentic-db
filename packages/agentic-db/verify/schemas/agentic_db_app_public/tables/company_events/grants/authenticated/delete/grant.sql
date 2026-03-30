-- Verify: schemas/agentic_db_app_public/tables/company_events/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.company_events', 'delete', 'authenticated');


