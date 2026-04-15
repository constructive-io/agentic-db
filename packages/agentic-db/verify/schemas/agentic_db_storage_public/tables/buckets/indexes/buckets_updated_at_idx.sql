-- Verify: schemas/agentic_db_storage_public/tables/buckets/indexes/buckets_updated_at_idx


SELECT verify_index('agentic_db_storage_public.buckets', 'buckets_updated_at_idx');


