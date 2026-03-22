-- Deploy: schemas/agentic_db_app_public/tables/codebases/indexes/codebases_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/policies/auth_del_entity_membership/policy


CREATE INDEX codebases_tags_gin_idx ON agentic_db_app_public.codebases USING GIN ( tags );

