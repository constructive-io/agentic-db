-- Deploy: schemas/agentic_db_app_public/tables/events/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/embedding/column


GRANT INSERT ON agentic_db_app_public.events TO authenticated;

