-- Deploy: schemas/agentic_db_app_public/tables/skills/constraints/skills_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table


ALTER TABLE agentic_db_app_public.skills 
  ADD CONSTRAINT skills_pkey PRIMARY KEY (id);

