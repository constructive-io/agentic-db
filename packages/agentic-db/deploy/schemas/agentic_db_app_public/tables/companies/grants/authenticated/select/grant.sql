-- Deploy: schemas/agentic_db_app_public/tables/companies/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_location_geo_gist_idx


GRANT SELECT ON "agentic_db_app_public".companies TO authenticated;

