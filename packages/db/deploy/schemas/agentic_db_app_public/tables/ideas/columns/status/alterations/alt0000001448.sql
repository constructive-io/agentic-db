-- Deploy: schemas/agentic_db_app_public/tables/ideas/columns/status/alterations/alt0000001448
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/source/column
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/status/column



ALTER TABLE "agentic_db_app_public".ideas 
    ALTER COLUMN status SET DEFAULT 'captured';

