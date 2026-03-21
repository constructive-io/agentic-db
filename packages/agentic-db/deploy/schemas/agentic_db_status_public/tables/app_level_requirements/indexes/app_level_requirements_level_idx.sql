-- Deploy: schemas/agentic_db_status_public/tables/app_level_requirements/indexes/app_level_requirements_level_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/table
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/columns/level/column


CREATE INDEX app_level_requirements_level_idx ON agentic_db_status_public.app_level_requirements USING BTREE ( level );

