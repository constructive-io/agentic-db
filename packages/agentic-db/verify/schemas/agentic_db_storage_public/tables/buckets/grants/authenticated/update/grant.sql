-- Verify: schemas/agentic_db_storage_public/tables/buckets/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_storage_public.buckets', 'update', 'authenticated');


