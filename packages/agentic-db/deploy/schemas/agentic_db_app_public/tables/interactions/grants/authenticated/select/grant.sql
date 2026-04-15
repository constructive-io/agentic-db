-- Deploy: schemas/agentic_db_app_public/tables/interactions/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table


GRANT SELECT ON "agentic_db_app_public".interactions TO authenticated;

