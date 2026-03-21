-- Deploy: schemas/agentic_db_app_public/tables/tasks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/venues/triggers/venues_search_tsv_tsv_update_tg


GRANT INSERT ON "agentic_db_app_public".tasks TO authenticated;

