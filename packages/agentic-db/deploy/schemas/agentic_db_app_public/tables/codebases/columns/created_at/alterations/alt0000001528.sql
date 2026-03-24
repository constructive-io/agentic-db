-- Deploy: schemas/agentic_db_app_public/tables/codebases/columns/created_at/alterations/alt0000001528
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx



ALTER TABLE "agentic_db_app_public".codebases 
    ALTER COLUMN created_at SET DEFAULT now();

