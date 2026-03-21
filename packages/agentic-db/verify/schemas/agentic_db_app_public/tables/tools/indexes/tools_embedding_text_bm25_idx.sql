-- Verify: schemas/agentic_db_app_public/tables/tools/indexes/tools_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.tools', 'tools_embedding_text_bm25_idx');


