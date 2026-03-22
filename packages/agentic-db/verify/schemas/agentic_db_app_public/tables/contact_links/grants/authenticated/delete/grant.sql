-- Verify: schemas/agentic_db_app_public/tables/contact_links/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.contact_links', 'delete', 'authenticated');


