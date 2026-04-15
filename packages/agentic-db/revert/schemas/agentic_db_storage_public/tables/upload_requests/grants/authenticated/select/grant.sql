-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_storage_public.upload_requests FROM authenticated;


