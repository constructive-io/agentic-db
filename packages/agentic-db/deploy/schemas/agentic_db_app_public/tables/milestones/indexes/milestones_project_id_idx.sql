-- Deploy: schemas/agentic_db_app_public/tables/milestones/indexes/milestones_project_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/milestones/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/project_id/column
-- requires: schemas/agentic_db_app_public/tables/project_chunks/columns/embedding/column


CREATE INDEX milestones_project_id_idx ON "agentic_db_app_public".milestones USING BTREE ( project_id );

