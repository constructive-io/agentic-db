-- Deploy: schemas/agentic_db_app_public/tables/images/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table


GRANT UPDATE ON "agentic_db_app_public".images TO authenticated;

