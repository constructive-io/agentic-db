-- Deploy: schemas/agentic_db_app_public/tables/contact_emails/indexes/contact_emails_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_emails/table
-- requires: schemas/agentic_db_app_public/tables/contact_emails/columns/contact_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX contact_emails_contact_id_idx ON "agentic_db_app_public".contact_emails USING BTREE ( contact_id );

