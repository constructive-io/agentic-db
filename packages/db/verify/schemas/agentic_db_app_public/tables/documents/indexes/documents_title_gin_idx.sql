-- Verify: schemas/agentic_db_app_public/tables/documents/indexes/documents_title_gin_idx


SELECT verify_index('agentic_db_app_public.documents', 'documents_title_gin_idx');


