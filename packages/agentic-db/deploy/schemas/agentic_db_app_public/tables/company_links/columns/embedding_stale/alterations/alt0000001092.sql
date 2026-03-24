-- Deploy: schemas/agentic_db_app_public/tables/company_links/columns/embedding_stale/alterations/alt0000001092
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_links/table
-- requires: schemas/agentic_db_app_public/tables/company_links/columns/embedding_stale/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy



ALTER TABLE "agentic_db_app_public".company_links 
    ALTER COLUMN embedding_stale SET DEFAULT true;

