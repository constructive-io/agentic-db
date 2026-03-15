-- Deploy: schemas/agent_db_app_public/tables/agents/indexes/agents_last_active_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/last_active_at/column
-- requires: schemas/agent_db_app_public/tables/agents/indexes/agents_preferred_model_idx


CREATE INDEX agents_last_active_at_idx ON agent_db_app_public.agents USING BTREE ( last_active_at );

