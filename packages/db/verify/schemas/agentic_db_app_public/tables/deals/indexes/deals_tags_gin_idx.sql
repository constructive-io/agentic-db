-- Verify: schemas/agentic_db_app_public/tables/deals/indexes/deals_tags_gin_idx


SELECT verify_index('agentic_db_app_public.deals', 'deals_tags_gin_idx');


