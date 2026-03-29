-- Deploy: schemas/agentic_db_status_public/tables/app_level_requirements/columns/required_count/alterations/alt0000002741
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/table
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/columns/required_count/column



ALTER TABLE agentic_db_status_public.app_level_requirements 
    ALTER COLUMN required_count SET DEFAULT 1;

