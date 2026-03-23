-- Verify: schemas/agentic_db_app_public/tables/notes_chunks/indexes/notes_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.notes_chunks', 'notes_chunks_embedding_hnsw_idx');


