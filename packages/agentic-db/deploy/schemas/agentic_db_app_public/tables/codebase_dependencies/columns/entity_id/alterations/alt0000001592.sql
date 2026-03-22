-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/entity_id/alterations/alt0000001592
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/indexes/codebas_chunks_codebasis_id_idx


ALTER TABLE "agentic_db_app_public".codebase_dependencies 
  ALTER COLUMN entity_id SET NOT NULL;

