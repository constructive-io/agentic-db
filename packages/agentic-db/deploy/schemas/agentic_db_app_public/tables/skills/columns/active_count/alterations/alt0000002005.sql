-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/active_count/alterations/alt0000002005
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/overview/column
-- requires: schemas/agentic_db_app_public/tables/skills/columns/active_count/column



ALTER TABLE "agentic_db_app_public".skills 
    ALTER COLUMN active_count SET DEFAULT 0;

