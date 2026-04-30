-- Verify: schemas/agentic_db_app_public/tables/documents/indexes/documents_tags_gin_idx


SELECT verify_index('agentic_db_app_public.documents', 'documents_tags_gin_idx');


