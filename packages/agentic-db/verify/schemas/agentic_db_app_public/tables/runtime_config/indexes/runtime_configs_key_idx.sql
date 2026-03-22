-- Verify: schemas/agentic_db_app_public/tables/runtime_config/indexes/runtime_configs_key_idx


SELECT verify_index('agentic_db_app_public.runtime_config', 'runtime_configs_key_idx');


