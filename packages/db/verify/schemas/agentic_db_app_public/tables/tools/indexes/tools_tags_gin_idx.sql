-- Verify: schemas/agentic_db_app_public/tables/tools/indexes/tools_tags_gin_idx


SELECT verify_index('agentic_db_app_public.tools', 'tools_tags_gin_idx');


