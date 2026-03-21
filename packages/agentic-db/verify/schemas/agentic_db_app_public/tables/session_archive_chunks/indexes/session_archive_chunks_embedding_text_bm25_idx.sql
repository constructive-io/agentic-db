-- Verify: schemas/agentic_db_app_public/tables/session_archive_chunks/indexes/session_archive_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.session_archive_chunks', 'session_archive_chunks_embedding_text_bm25_idx');


