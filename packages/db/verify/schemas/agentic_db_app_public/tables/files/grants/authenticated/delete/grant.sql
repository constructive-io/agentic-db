-- Verify: schemas/agentic_db_app_public/tables/files/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.files', 'delete', 'authenticated');


