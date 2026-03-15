-- Verify: schemas/agent_db_app_public/tables/repositories/indexes/repositories_last_synced_at_idx


SELECT verify_index('agent_db_app_public.repositories', 'repositories_last_synced_at_idx');


