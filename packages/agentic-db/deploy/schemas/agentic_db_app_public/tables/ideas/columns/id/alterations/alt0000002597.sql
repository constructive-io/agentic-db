-- Deploy: schemas/agentic_db_app_public/tables/ideas/columns/id/alterations/alt0000002597
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/documents/triggers/documents_search_tsv_tsv_update_tg



ALTER TABLE "agentic_db_app_public".ideas 
    ALTER COLUMN id SET DEFAULT uuidv7();

