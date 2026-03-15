-- Deploy: schemas/agent_db_app_public/tables/files/indexes/files_repository_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/files/columns/repository_id/column
-- requires: schemas/agent_db_app_public/tables/milestones/indexes/milestones_status_idx


CREATE INDEX files_repository_id_idx ON agent_db_app_public.files USING BTREE ( repository_id );

