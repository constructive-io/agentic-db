-- Verify: schemas/agent_db_app_public/tables/files/indexes/files_repository_id_idx


SELECT verify_index('agent_db_app_public.files', 'files_repository_id_idx');


