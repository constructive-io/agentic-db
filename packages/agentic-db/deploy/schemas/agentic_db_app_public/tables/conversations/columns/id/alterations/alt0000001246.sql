-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/id/alterations/alt0000001246
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE "agentic_db_app_public".conversations 
  ALTER COLUMN id SET NOT NULL;

