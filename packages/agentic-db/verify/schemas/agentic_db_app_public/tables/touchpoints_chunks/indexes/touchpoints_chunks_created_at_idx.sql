-- Verify: schemas/agentic_db_app_public/tables/touchpoints_chunks/indexes/touchpoints_chunks_created_at_idx


SELECT verify_index('agentic_db_app_public.touchpoints_chunks', 'touchpoints_chunks_created_at_idx');


