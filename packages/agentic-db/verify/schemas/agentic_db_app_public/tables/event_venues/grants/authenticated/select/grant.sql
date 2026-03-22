-- Verify: schemas/agentic_db_app_public/tables/event_venues/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.event_venues', 'select', 'authenticated');


