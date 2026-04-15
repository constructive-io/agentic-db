-- Deploy: schemas/agentic_db_app_public/tables/contact_companies/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_companies/table


GRANT SELECT ON "agentic_db_app_public".contact_companies TO authenticated;

