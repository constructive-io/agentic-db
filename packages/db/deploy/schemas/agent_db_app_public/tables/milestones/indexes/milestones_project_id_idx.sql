-- Deploy: schemas/agent_db_app_public/tables/milestones/indexes/milestones_project_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/milestones/columns/project_id/column
-- requires: schemas/agent_db_app_public/tables/projects/indexes/projects_due_date_idx


CREATE INDEX milestones_project_id_idx ON "agent_db_app_public".milestones USING BTREE ( project_id );

