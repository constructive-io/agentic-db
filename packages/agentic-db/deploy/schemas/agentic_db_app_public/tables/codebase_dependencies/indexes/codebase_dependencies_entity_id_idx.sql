-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/indexes/codebase_dependencies_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/indexes/codebas_chunks_codebasis_id_idx


CREATE INDEX codebase_dependencies_entity_id_idx ON "agentic_db_app_public".codebase_dependencies USING BTREE ( entity_id );

