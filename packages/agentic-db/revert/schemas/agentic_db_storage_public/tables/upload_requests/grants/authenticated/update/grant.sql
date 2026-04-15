-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/grants/authenticated/update/grant


REVOKE UPDATE (status, confirmed_at) ON agentic_db_storage_public.upload_requests FROM authenticated;


