-- Revert: schemas/agentic_db_storage_public/tables/buckets/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_storage_public.buckets FROM authenticated;


