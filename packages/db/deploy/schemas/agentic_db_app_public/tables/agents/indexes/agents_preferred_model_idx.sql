-- Deploy: schemas/agentic_db_app_public/tables/agents/indexes/agents_preferred_model_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/preferred_model/column
-- requires: schemas/agentic_db_app_public/tables/skill_executions/indexes/skill_executions_started_at_idx


CREATE INDEX agents_preferred_model_idx ON "agentic_db_app_public".agents USING BTREE ( preferred_model );

