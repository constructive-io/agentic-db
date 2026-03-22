-- Deploy: schemas/agentic_db_status_public/tables/app_level_requirements/columns/priority/alterations/alt0000000212
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/table
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/columns/priority/column



ALTER TABLE "agentic_db_status_public".app_level_requirements 
    ALTER COLUMN priority SET DEFAULT 100;

