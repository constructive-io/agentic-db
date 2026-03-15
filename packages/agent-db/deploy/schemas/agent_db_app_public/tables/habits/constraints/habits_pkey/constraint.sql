-- Deploy: schemas/agent_db_app_public/tables/habits/constraints/habits_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/embedding/column


ALTER TABLE agent_db_app_public.habits 
  ADD CONSTRAINT habits_pkey PRIMARY KEY (id);

