-- Verify: schemas/agent_db_app_public/tables/trips/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.trips', 'update', 'authenticated');


