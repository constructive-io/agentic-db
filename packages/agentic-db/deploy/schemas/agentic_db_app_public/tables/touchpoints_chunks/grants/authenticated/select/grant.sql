-- Deploy: schemas/agentic_db_app_public/tables/touchpoints_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints_chunks/table


GRANT SELECT ON "agentic_db_app_public".touchpoints_chunks TO authenticated;

