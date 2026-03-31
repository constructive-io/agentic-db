-- Deploy: schemas/agentic_db_app_public/tables/contact_addresses/indexes/contact_addresses_address_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_addresses/table
-- requires: schemas/agentic_db_app_public/tables/contact_addresses/columns/address_type/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX contact_addresses_address_type_idx ON agentic_db_app_public.contact_addresses USING BTREE ( address_type );

