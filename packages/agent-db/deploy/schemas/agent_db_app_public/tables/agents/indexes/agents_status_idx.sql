-- Deploy: schemas/agent_db_app_public/tables/agents/indexes/agents_status_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/status/column
-- requires: schemas/agent_db_app_public/tables/goals/indexes/goals_target_date_idx


CREATE INDEX agents_status_idx ON "agent_db_app_public".agents USING BTREE ( status );

