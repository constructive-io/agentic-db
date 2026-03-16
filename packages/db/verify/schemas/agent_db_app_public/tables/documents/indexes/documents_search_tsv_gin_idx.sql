-- Verify: schemas/agent_db_app_public/tables/documents/indexes/documents_search_tsv_gin_idx


SELECT verify_index('agent_db_app_public.documents', 'documents_search_tsv_gin_idx');


