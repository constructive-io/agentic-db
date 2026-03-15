-- Deploy: schemas/agent_db_app_public/tables/lists/constraints/lists_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/lists/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/tags/column


ALTER TABLE agent_db_app_public.lists 
  ADD CONSTRAINT lists_pkey PRIMARY KEY (id);

