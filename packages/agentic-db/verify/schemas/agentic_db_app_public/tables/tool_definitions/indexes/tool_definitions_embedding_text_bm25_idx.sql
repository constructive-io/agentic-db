-- Verify: schemas/agentic_db_app_public/tables/tool_definitions/indexes/tool_definitions_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.tool_definitions', 'tool_definitions_embedding_text_bm25_idx');


