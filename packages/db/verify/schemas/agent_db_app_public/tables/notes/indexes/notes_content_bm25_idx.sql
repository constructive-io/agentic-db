-- Verify: schemas/agent_db_app_public/tables/notes/indexes/notes_content_bm25_idx


SELECT verify_index('agent_db_app_public.notes', 'notes_content_bm25_idx');


