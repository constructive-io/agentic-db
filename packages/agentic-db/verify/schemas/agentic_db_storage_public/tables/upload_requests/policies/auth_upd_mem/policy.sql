-- Verify: schemas/agentic_db_storage_public/tables/upload_requests/policies/auth_upd_mem/policy


SELECT verify_policy('auth_upd_mem', 'agentic_db_storage_public.upload_requests');


