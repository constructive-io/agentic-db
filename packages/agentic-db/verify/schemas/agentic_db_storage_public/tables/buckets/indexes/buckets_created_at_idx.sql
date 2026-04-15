-- Verify: schemas/agentic_db_storage_public/tables/buckets/indexes/buckets_created_at_idx


SELECT verify_index('agentic_db_storage_public.buckets', 'buckets_created_at_idx');


