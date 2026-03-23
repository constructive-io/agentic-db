-- Deploy: schemas/agentic_db_app_public/tables/codebases/indexes/codebases_config_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/config/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE INDEX codebases_config_gin_idx ON "agentic_db_app_public".codebases USING GIN ( config );

