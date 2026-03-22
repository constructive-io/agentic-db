-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/codebase_id/alterations/alt0000001588
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/codebase_id/column
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/indexes/codebas_chunks_codebasis_id_idx


ALTER TABLE "agentic_db_app_public".codebase_dependencies 
  ALTER COLUMN codebase_id SET NOT NULL;

