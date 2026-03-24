-- Deploy: schemas/agentic_db_app_public/tables/emails/indexes/emails_to_recipients_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails/columns/to_recipients/column
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


CREATE INDEX emails_to_recipients_gin_idx ON "agentic_db_app_public".emails USING GIN ( to_recipients );

