-- Verify: schemas/agentic_db_app_public/tables/chunks/indexes/chunks_repository_id_idx


SELECT verify_index('agentic_db_app_public.chunks', 'chunks_repository_id_idx');


