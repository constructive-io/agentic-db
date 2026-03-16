-- Deploy: schemas/agent_db_app_public/tables/goals/indexes/goals_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/status/column
-- requires: schemas/agent_db_app_public/tables/skills/indexes/skills_is_active_idx


CREATE INDEX goals_status_idx ON "agent_db_app_public".goals USING BTREE ( status );

