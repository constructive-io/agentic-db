-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/updated_at/alterations/alt0000000508
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


COMMENT ON COLUMN agentic_db_app_public.messages.updated_at IS 'Timestamp when this record was last updated';

