-- Verify: schemas/agentic_db_app_public/tables/runtime_logs_chunks/indexes/runtime_logs_chunks_updated_at_idx


SELECT verify_index('agentic_db_app_public.runtime_logs_chunks', 'runtime_logs_chunks_updated_at_idx');


