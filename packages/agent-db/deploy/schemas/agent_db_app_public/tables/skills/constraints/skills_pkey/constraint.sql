-- Deploy: schemas/agent_db_app_public/tables/skills/constraints/skills_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/embedding/column


ALTER TABLE agent_db_app_public.skills 
  ADD CONSTRAINT skills_pkey PRIMARY KEY (id);

