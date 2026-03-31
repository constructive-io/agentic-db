-- Deploy: schemas/agentic_db_app_public/tables/companies_chunks/indexes/companies_chunks_companies_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies_chunks/table
-- requires: schemas/agentic_db_app_public/tables/companies_chunks/columns/companies_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX companies_chunks_companies_id_idx ON "agentic_db_app_public".companies_chunks USING BTREE ( companies_id );

