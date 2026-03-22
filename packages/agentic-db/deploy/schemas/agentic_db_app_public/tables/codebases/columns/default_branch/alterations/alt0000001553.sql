-- Deploy: schemas/agentic_db_app_public/tables/codebases/columns/default_branch/alterations/alt0000001553
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/default_branch/column
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/repository_url/column



ALTER TABLE "agentic_db_app_public".codebases 
    ALTER COLUMN default_branch SET DEFAULT 'main';

