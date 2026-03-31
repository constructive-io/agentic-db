-- Deploy: schemas/agentic_db_app_public/tables/messages_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


GRANT DELETE ON "agentic_db_app_public".messages_chunks TO authenticated;

