-- Deploy: schemas/agentic_db_app_public/tables/messages/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/meta/column


GRANT UPDATE ON agentic_db_app_public.messages TO authenticated;

