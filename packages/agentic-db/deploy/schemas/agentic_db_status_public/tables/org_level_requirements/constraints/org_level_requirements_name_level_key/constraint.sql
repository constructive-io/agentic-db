-- Deploy: schemas/agentic_db_status_public/tables/org_level_requirements/constraints/org_level_requirements_name_level_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_level_requirements/table


ALTER TABLE agentic_db_status_public.org_level_requirements 
  ADD CONSTRAINT org_level_requirements_name_level_key 
    UNIQUE (name, level);

