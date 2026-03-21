-- Verify: schemas/agentic_db_app_public/tables/document_chunks/indexes/document_chunks_document_id_idx


SELECT verify_index('agentic_db_app_public.document_chunks', 'document_chunks_document_id_idx');


