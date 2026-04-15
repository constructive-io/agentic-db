-- Verify: schemas/agentic_db_storage_public/tables/buckets/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_storage_public.buckets', 'insert', 'authenticated');


