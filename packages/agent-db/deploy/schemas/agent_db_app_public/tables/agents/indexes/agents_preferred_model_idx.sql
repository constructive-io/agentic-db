-- Deploy: schemas/agent_db_app_public/tables/agents/indexes/agents_preferred_model_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/preferred_model/column
-- requires: schemas/agent_db_app_public/tables/skill_executions/indexes/skill_executions_started_at_idx


CREATE INDEX agents_preferred_model_idx ON agent_db_app_public.agents USING BTREE ( preferred_model );

