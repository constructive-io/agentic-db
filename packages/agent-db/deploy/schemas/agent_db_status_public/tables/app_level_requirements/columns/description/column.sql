-- Deploy: schemas/agent_db_status_public/tables/app_level_requirements/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/table


ALTER TABLE agent_db_status_public.app_level_requirements 
  ADD COLUMN description text;

