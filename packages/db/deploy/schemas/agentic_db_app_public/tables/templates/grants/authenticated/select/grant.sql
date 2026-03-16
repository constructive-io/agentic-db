-- Deploy: schemas/agentic_db_app_public/tables/templates/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/embedding/column


GRANT SELECT ON "agentic_db_app_public".templates TO authenticated;

