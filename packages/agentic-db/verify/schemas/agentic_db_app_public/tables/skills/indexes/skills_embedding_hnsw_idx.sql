-- Verify: schemas/agentic_db_app_public/tables/skills/indexes/skills_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.skills', 'skills_embedding_hnsw_idx');


