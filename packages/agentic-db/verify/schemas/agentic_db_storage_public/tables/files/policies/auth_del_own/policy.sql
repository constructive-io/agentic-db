-- Verify: schemas/agentic_db_storage_public/tables/files/policies/auth_del_own/policy


SELECT verify_policy('auth_del_own', 'agentic_db_storage_public.files');


