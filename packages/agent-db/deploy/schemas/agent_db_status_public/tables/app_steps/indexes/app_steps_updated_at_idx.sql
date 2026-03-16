-- Deploy: schemas/agent_db_status_public/tables/app_steps/indexes/app_steps_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/table
-- requires: schemas/agent_db_status_public/tables/app_steps/columns/updated_at/column


CREATE INDEX app_steps_updated_at_idx ON "agent_db_status_public".app_steps ( updated_at );

