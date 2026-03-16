-- Verify: schemas/agent_db_app_public/tables/activity_log/indexes/activity_logs_data_gin_idx


SELECT verify_index('agent_db_app_public.activity_log', 'activity_logs_data_gin_idx');


