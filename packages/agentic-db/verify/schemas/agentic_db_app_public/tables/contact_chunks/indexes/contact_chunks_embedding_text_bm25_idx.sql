-- Verify: schemas/agentic_db_app_public/tables/contact_chunks/indexes/contact_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.contact_chunks', 'contact_chunks_embedding_text_bm25_idx');


