-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/verified/alterations/alt0000001062
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/verified/column
-- requires: schemas/agentic_db_app_public/tables/memories/columns/importance/column



ALTER TABLE "agentic_db_app_public".memories 
    ALTER COLUMN verified SET DEFAULT false;

