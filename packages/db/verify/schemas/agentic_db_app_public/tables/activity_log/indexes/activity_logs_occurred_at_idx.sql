-- Verify: schemas/agentic_db_app_public/tables/activity_log/indexes/activity_logs_occurred_at_idx


SELECT verify_index('agentic_db_app_public.activity_log', 'activity_logs_occurred_at_idx');


