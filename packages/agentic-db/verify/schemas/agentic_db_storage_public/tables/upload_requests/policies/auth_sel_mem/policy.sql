-- Verify: schemas/agentic_db_storage_public/tables/upload_requests/policies/auth_sel_mem/policy


SELECT verify_policy('auth_sel_mem', 'agentic_db_storage_public.upload_requests');


