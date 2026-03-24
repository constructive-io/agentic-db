-- Verify: schemas/agentic_db_app_public/tables/emails/indexes/emails_search_tsv_gin_idx


SELECT verify_index('agentic_db_app_public.emails', 'emails_search_tsv_gin_idx');


