-- Verify: schemas/agent_db_app_public/tables/notes/indexes/notes_embedding_hnsw_idx


SELECT verify_index('agent_db_app_public.notes', 'notes_embedding_hnsw_idx');


