-- Verify: schemas/agentic_db_app_public/tables/codebases/indexes/codebases_tags_gin_idx


SELECT verify_index('agentic_db_app_public.codebases', 'codebases_tags_gin_idx');


