-- Verify: schemas/agent_db_app_public/tables/execution_log/indexes/execution_logs_session_id_idx


SELECT verify_index('agent_db_app_public.execution_log', 'execution_logs_session_id_idx');


