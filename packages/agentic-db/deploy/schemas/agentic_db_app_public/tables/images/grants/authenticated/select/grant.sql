-- Deploy: schemas/agentic_db_app_public/tables/images/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table


GRANT SELECT ON "agentic_db_app_public".images TO authenticated;

