-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/id/alterations/alt0000006201
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/indexes/codebas_chunks_codebasis_id_idx



ALTER TABLE agentic_db_app_public.codebase_dependencies 
    ALTER COLUMN id SET DEFAULT uuidv7();

