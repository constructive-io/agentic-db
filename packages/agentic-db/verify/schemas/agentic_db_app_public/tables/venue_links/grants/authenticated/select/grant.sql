-- Verify: schemas/agentic_db_app_public/tables/venue_links/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.venue_links', 'select', 'authenticated');


