-- Verify: schemas/agent_db_app_public/tables/venues/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.venues', 'update', 'authenticated');


