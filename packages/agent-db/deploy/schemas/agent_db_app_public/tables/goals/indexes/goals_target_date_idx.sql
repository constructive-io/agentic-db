-- Deploy: schemas/agent_db_app_public/tables/goals/indexes/goals_target_date_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/target_date/column
-- requires: schemas/agent_db_app_public/tables/goals/indexes/goals_category_idx


CREATE INDEX goals_target_date_idx ON agent_db_app_public.goals USING BTREE ( target_date );

