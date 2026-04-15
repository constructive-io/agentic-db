-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_storage_public.upload_requests FROM authenticated;


