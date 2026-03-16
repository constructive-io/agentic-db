-- Verify: schemas/agent_db_app_public/tables/documents/indexes/documents_content_bm25_idx


SELECT verify_index('agent_db_app_public.documents', 'documents_content_bm25_idx');


