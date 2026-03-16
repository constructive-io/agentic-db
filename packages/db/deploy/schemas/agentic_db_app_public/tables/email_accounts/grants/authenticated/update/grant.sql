-- Deploy: schemas/agentic_db_app_public/tables/email_accounts/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_accounts/table
-- requires: schemas/agentic_db_app_public/tables/chunks/constraints/chunks_repository_id_fkey/constraint


GRANT UPDATE ON "agentic_db_app_public".email_accounts TO authenticated;

