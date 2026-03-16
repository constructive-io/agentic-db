-- Verify: schemas/agentic_db_app_public/tables/session_archives/indexes/session_archives_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.session_archives', 'session_archives_embedding_text_bm25_idx');


