-- Verify: schemas/agentic_db_app_public/tables/venues/indexes/venues_search_tsv_gin_idx


SELECT verify_index('agentic_db_app_public.venues', 'venues_search_tsv_gin_idx');


