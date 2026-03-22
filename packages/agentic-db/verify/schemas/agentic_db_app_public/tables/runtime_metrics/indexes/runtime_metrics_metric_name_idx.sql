-- Verify: schemas/agentic_db_app_public/tables/runtime_metrics/indexes/runtime_metrics_metric_name_idx


SELECT verify_index('agentic_db_app_public.runtime_metrics', 'runtime_metrics_metric_name_idx');


