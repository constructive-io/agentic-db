-- Verify: schemas/agentic_db_storage_public/tables/files/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_storage_public.files', 'delete', 'authenticated');


