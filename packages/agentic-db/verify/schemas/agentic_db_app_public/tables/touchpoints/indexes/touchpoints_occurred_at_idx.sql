-- Verify: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_occurred_at_idx


SELECT verify_index('agentic_db_app_public.touchpoints', 'touchpoints_occurred_at_idx');


