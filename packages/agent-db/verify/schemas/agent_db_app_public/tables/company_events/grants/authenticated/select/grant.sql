-- Verify: schemas/agent_db_app_public/tables/company_events/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.company_events', 'select', 'authenticated');


