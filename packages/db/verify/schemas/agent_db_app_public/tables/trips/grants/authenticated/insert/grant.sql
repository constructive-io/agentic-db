-- Verify: schemas/agent_db_app_public/tables/trips/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.trips', 'insert', 'authenticated');


