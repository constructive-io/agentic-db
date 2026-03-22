-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/indexes/codebas_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/columns/entity_id/column


CREATE INDEX codebas_chunks_entity_id_idx ON "agentic_db_app_public".codebas_chunks USING BTREE ( entity_id );

