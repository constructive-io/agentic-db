-- Deploy: schemas/agentic_db_app_public/tables/contact_relationships/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_relationships/table


GRANT SELECT ON "agentic_db_app_public".contact_relationships TO authenticated;

