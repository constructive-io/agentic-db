-- Verify: schemas/agentic_db_app_public/tables/skills_chunks/indexes/skills_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.skills_chunks', 'skills_chunks_embedding_hnsw_idx');


