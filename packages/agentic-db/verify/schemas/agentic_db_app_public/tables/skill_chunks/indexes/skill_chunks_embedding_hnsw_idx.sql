-- Verify: schemas/agentic_db_app_public/tables/skill_chunks/indexes/skill_chunks_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.skill_chunks', 'skill_chunks_embedding_hnsw_idx');


