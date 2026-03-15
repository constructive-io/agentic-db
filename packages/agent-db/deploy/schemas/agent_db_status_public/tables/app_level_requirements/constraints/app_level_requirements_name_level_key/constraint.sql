-- Deploy: schemas/agent_db_status_public/tables/app_level_requirements/constraints/app_level_requirements_name_level_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/table


ALTER TABLE agent_db_status_public.app_level_requirements 
  ADD CONSTRAINT app_level_requirements_name_level_key 
    UNIQUE (name, level);

