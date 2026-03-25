-- Deploy: schemas/agentic_db_app_public/tables/expenses/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


GRANT SELECT ON "agentic_db_app_public".expenses TO authenticated;

