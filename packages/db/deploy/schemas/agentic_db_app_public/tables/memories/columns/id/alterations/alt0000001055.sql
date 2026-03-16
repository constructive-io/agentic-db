-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/id/alterations/alt0000001055
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/rules/columns/trigger_concept/column



ALTER TABLE "agentic_db_app_public".memories 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

