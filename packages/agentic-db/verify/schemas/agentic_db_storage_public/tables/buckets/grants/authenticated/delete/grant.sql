-- Verify: schemas/agentic_db_storage_public/tables/buckets/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_storage_public.buckets', 'delete', 'authenticated');


