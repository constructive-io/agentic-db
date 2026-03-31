-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/created_at/alterations/alt0000001558
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx



ALTER TABLE "agentic_db_app_public".messages 
    ALTER COLUMN created_at SET DEFAULT now();

