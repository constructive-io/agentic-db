-- Deploy: schemas/agentic_db_app_public/tables/companies/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/main_image_id/column


GRANT UPDATE ON "agentic_db_app_public".companies TO authenticated;

