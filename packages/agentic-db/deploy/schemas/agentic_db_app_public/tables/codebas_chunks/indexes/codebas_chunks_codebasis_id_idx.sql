-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/indexes/codebas_chunks_codebasis_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/columns/codebasis_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_codebasis_id_idx


CREATE INDEX codebas_chunks_codebasis_id_idx ON "agentic_db_app_public".codebas_chunks USING BTREE ( codebasis_id );

