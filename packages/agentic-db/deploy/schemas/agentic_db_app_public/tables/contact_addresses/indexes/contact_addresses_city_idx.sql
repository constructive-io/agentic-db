-- Deploy: schemas/agentic_db_app_public/tables/contact_addresses/indexes/contact_addresses_city_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_addresses/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contact_addresses/columns/city/column


CREATE INDEX contact_addresses_city_idx ON agentic_db_app_public.contact_addresses USING BTREE ( city );

