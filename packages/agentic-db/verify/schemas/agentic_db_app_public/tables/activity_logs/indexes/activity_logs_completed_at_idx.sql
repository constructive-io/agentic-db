-- Verify: schemas/agentic_db_app_public/tables/activity_logs/indexes/activity_logs_completed_at_idx


SELECT verify_index('agentic_db_app_public.activity_logs', 'activity_logs_completed_at_idx');


