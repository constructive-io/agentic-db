-- Deploy: schemas/agentic_db_app_public/tables/habits/constraints/habits_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table


ALTER TABLE agentic_db_app_public.habits 
  ADD CONSTRAINT habits_pkey PRIMARY KEY (id);

