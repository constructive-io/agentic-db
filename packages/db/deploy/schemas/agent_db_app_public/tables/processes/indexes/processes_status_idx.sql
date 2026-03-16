-- Deploy: schemas/agent_db_app_public/tables/processes/indexes/processes_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/processes/table
-- requires: schemas/agent_db_app_public/tables/processes/columns/status/column
-- requires: schemas/agent_db_app_public/tables/processes/indexes/processes_agent_id_idx


CREATE INDEX processes_status_idx ON "agent_db_app_public".processes USING BTREE ( status );

