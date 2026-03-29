-- Deploy: schemas/agentic_db_app_public/tables/conversations/indexes/conversations_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


CREATE INDEX conversations_status_idx ON agentic_db_app_public.conversations USING BTREE ( status );

