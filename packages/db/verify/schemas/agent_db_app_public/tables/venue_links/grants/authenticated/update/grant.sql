-- Verify: schemas/agent_db_app_public/tables/venue_links/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.venue_links', 'update', 'authenticated');


