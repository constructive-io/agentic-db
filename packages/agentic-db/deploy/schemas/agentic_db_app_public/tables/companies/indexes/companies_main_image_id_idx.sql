-- Deploy: schemas/agentic_db_app_public/tables/companies/indexes/companies_main_image_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies/columns/main_image_id/column
-- requires: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_main_image_id_idx


CREATE INDEX companies_main_image_id_idx ON "agentic_db_app_public".companies USING BTREE ( main_image_id );

