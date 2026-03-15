-- Deploy: schemas/agent_db_status_public/tables/app_level_requirements/indexes/app_level_requirements_name_level_priority_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/columns/name/column
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/columns/level/column
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/columns/priority/column


CREATE INDEX app_level_requirements_name_level_priority_idx ON agent_db_status_public.app_level_requirements USING BTREE ( name, level, priority );

