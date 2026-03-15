-- Deploy: schemas/agent_db_status_public/tables/org_steps/indexes/org_steps_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table
-- requires: schemas/agent_db_status_public/tables/org_steps/columns/updated_at/column


CREATE INDEX org_steps_updated_at_idx ON agent_db_status_public.org_steps ( updated_at );

