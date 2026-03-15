-- Deploy: schemas/agent_db_app_public/tables/goals/indexes/goals_category_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/category/column
-- requires: schemas/agent_db_app_public/tables/goals/indexes/goals_status_idx


CREATE INDEX goals_category_idx ON agent_db_app_public.goals USING BTREE ( category );

