-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/created_at/alterations/alt0000001162
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agents/columns/created_at/column



ALTER TABLE "agentic_db_app_public".agents 
    ALTER COLUMN created_at SET DEFAULT now();

