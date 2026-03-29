-- Deploy: schemas/agentic_db_status_public/tables/app_level_requirements/indexes/app_level_requirements_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/table
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/columns/updated_at/column


CREATE INDEX app_level_requirements_updated_at_idx ON agentic_db_status_public.app_level_requirements ( updated_at );

