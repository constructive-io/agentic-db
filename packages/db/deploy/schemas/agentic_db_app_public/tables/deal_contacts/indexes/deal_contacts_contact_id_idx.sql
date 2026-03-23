-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/indexes/deal_contacts_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/columns/contact_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX deal_contacts_contact_id_idx ON "agentic_db_app_public".deal_contacts USING BTREE ( contact_id );

