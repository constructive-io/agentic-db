-- Verify: schemas/agent_db_app_public/tables/venues/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.venues', 'select', 'authenticated');


